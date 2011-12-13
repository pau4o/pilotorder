class Instruction < ActiveRecord::Base
  attr_accessible :effective, :subject, :body, :due, :canceled, :cancelation

  before_create :set_effective_to_now

  def set_effective_to_now
    self.effective = Time.now
  end

end
