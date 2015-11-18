class Quote < ActiveRecord::Base
	has_many :liked_quotes
	belongs_to :issue
	belongs_to :candidate

	scope :for_issue, -> (issue){where(issue_id: issue)}
	
	def self.getSources
		Quote.select("source").group("source").map{|q| q.source}.to_a
	end

end
