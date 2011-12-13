require 'test_helper'

class TugTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Tug.new.valid?
  end
end
