class Quote < ActiveRecord::Base
	has_many :liked_quotes
	belongs_to :issue_id
	belongs_to :candidate_id
end
