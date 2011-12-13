require 'test_helper'

class ShipTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Ship.new.valid?
  end
end
