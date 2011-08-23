class Order < ActiveRecord::Base
  attr_accessible :eta_varna, :vessel_id, :country_receiver, :country_receiver_id, :i18n_cruise_number 
  attr_accessible :starting_port, :ending_port, :maneuver_state, :maneuver_from, :maneuver_to, :danger_cargo 
  attr_accessible :danger_cargo_filename, :tug_company, :requirements, :payer
end
