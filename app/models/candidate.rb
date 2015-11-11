class Candidate < ActiveRecord::Base
	has_many :quotes

	def name
		first_name + " " + last_name
	end

	def self.getQuote(candidate)
		return candidate.quotes.sample
	end
end
