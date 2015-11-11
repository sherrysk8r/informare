class Quote < ActiveRecord::Base
	has_many :liked_quotes
	belongs_to :issue
	belongs_to :candidate


end
