class Candidate < ActiveRecord::Base
	has_many :quotes

	def name
		first_name + " " + last_name
	end

	def self.getQuote(candidate)
		return candidate.quotes.sample
	end

	def self.getCorrectMessage(correct_answer_candidate_id)
		return "Not quite! It was actually " + Candidate.find(correct_answer_candidate_id).name + " who said it."
	end
end
