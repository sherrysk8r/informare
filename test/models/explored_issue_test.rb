require 'test_helper'

class ExploredIssueTest < ActiveSupport::TestCase
  should belong_to(:user)
  should belong_to(:issue)
end
