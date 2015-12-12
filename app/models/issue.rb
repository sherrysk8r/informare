class Issue < ActiveRecord::Base
	belongs_to :category
	has_many :explored_issues

	def hasBeenExploredBy(current_user_id)
		explored_issues = User.find(current_user_id).explored_issues.map {|i| i.issue.id }.to_a
		return explored_issues.include?(self.id)
	end
end
