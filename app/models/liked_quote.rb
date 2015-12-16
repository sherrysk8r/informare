class LikedQuote < ActiveRecord::Base
	belongs_to :user
	belongs_to :quote

	validate :quote_not_liked_before

	def quote_not_liked_before
		if !(self.user.liked_quotes.find_by quote_id: self.quote_id).nil?
			errors.add(:quote_id, "This quote has already been liked.")
			return false
		end
		return true
	end
end
