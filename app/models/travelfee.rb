class Travelfee < ActiveRecord::Base
  attr_accessible :classname, :date, :travelfee, :userid
  belongs_to :user
  #belongs_to :timetables
  #belongs_to :attendances
  
  validates :userid,numericality:{only_integer:true}, presence:true
  validates :travelfee,numericality:{only_integer:true}, presence:true
  validates :classname, presence:true
  self.per_page=5
end
WillPaginate.per_page=5