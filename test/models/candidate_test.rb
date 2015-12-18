require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  should have_many(:quotes)
end
