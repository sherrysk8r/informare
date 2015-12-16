class UserStreak < ActiveRecord::Base
	belongs_to :user

	scope :mostRecent, -> { order(date_end: desc) }
	scope :oldest, -> { order(date_end: :asc) }
	scope :current, -> { where(date_end: nil) }
	scope :byScore, -> { order(streak: :desc) }

	def user_proper_name
		return self.user.proper_name
	end

	def user_name
		return self.user.name
	end

	def self.getTopStreaks
		return UserStreak.byScore.first(6)
	end

end
