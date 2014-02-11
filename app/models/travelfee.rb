class Travelfee < ActiveRecord::Base
  attr_accessible :classname, :date, :travelfee, :userid
  validates :userid,numericality:{only_integer:true}
end
