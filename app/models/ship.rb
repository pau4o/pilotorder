class Ship < ActiveRecord::Base
  attr_accessible :imonumber, :name, :callsign, :flag, :owner, :gt, :loa, :boa, :draftfwd, :aft, :airdraft, :propelers, :proptype, :trusters, :editor_id
end
