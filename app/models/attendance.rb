class Attendance < ActiveRecord::Base
  attr_accessible :date, :leavetime, :reachtime, :userid
  belongs_to :user
  validates :userid,numericality:{only_integer:true},presence:true
  self.per_page=5

  
end
WillPaginate.per_page=5