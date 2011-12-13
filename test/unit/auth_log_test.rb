require 'test_helper'

class AuthLogTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert AuthLog.new.valid?
  end
end
