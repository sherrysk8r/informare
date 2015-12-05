class Issue < ActiveRecord::Base
	belongs_to :category
	has_many :explored_issues
end
