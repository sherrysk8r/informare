require 'test_helper'

class LikedQuoteTest < ActiveSupport::TestCase
  should belong_to(:user)
  should belong_to(:quote)
end
