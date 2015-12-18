require 'test_helper'

class IssueTest < ActiveSupport::TestCase
  should belong_to(:category)
  should have_many(:explored_issues)
end
