class User < ActiveRecord::Base
	has_many :liked_quotes
    has_many :user_streaks
    has_many :explored_issues
	
	has_secure_password

	validates :number_of_questions_answered, numericality: {only_integer: true, greater_than_or_equal_to: 0}, allow_blank:true

	validates :number_of_questions_correct, numericality: {only_integer: true, greater_than_or_equal_to: 0}, allow_blank:true

	validates_presence_of :first_name, :last_name, :email
	validates_uniqueness_of :email
	validates_presence_of :password, on: :create 
    validates_presence_of :password_confirmation, on: :create
    validates_confirmation_of :password, message: "does not match"
    validates_length_of :password, minimum: 4, message: "must be at least 4 characters long", allow_blank: true
    validates_format_of :email, with: /\A[\w]([^@\s,;]+)@(([\w-]+\.)+(com|edu|org|net|gov|mil|biz|info))\z/i, message: "is not a valid format"

	def self.authenticate(email,password)
      	find_by_email(email).try(:authenticate, password)
    end

    def name
    	first_name + " " + last_name
    end

    def proper_name
    	last_name + ", " + first_name
    end

    def percent_correct
        if self.number_of_questions_answered == 0
            return "You haven't answered any questions yet!"
        else
        	return ((100*self.number_of_questions_correct.to_f/self.number_of_questions_answered).round(0)).to_s + "%"
        end
    end

    def current_streak
        if !self.user_streaks.empty?
            current_streak = self.user_streaks.current.take
            if current_streak.nil?
                return 0
            else
                return current_streak.streak
            end
        else
            return 0
        end
    end

    def set_end_date_of_old_streak
        previous = self.user_streaks.current.take
        previous.update_attribute(:date_end, Date.today) unless previous.nil?
    end 

    def update_streak
        current = self.user_streaks.current.take
        current.update_attribute(:streak, current.streak + 1)
    end

    def create_new_streak
        new_streak = UserStreak.create(user_id: self.id, streak: 1, date_start: Date.today)
        new_streak.save!
    end

    def explored_issue(issue_id)
        issues = self.explored_issues.map{|i| i.issue_id}
        return issues.include?(issue_id)
    end

    def add_explored_issue(issue_id)
        if !explored_issue(issue_id)
            new_exploration = ExploredIssue.create(user_id: self.id, issue_id: issue_id)
            new_exploration.save!
        end
    end

    def percent_explored
        return (self.explored_issues.count.to_f)/Issue.all.count
    end

    def has_liked_quote(quote_id)
        return self.liked_quotes.map{|q| q.quote.id }.to_a.include? (quote_id)
    end
end
