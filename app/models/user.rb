class User < ActiveRecord::Base
	has_many :liked_quotes
	
	has_secure_password

	validates :number_of_questions_answered, numericality: {only_integer: true, greater_than_or_equal_to: 0}, allow_blank:true

	validates :number_of_questions_correct, numericality: {only_integer: true, greater_than_or_equal_to: 0}, allow_blank:true

	validates :current_streak, numericality: {only_integer: true, greater_than_or_equal_to: 0}, allow_blank:true

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
    	self.number_of_questions_correct.to_f/self.number_of_questions_answered
    end

    def self.getLeaders
        User.order(current_streak: :desc).first(10)
    end
end
