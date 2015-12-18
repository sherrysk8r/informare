require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  should have_many(:liked_quotes)
  should belong_to(:issue)
  should belong_to(:candidate)
end
