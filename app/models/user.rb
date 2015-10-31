class User < ActiveRecord::Base
	has_many :liked_quotes
end
