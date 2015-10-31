class User < ActiveRecord::Base
	has_many :liked_quotes

	validates number_of_questions_answered, numericality: {only_integer: true, greater_than_or_equal_to: 0}, allow_blank:true

	validates number_of_questions_correct, numericality: {only_integer: true, greater_than_or_equal_to: 0}, allow_blank:true

	validates current_streak, numericality: {only_integer: true, greater_than_or_equal_to: 0}, allow_blank:true
end
