require 'test_helper'

class InstructionTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Instruction.new.valid?
  end
end
