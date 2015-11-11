class Candidate < ActiveRecord::Base
	has_many :quotes

	def name
		first_name + " " + last_name
	end
end
