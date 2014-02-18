class Attendance < ActiveRecord::Base
  attr_accessible :date, :leavetime, :reachtime, :userid
  belongs_to :user
  #has_many:travelfees
 #has_many:timetables,:through => :travelfees
  
  validates :userid,numericality:{only_integer:true},presence:true
  validates :reachtime,presence:true
  validates :leavetime,presence:true
  validate :reach_must_be_before_leave_time
  def reach_must_be_before_leave_time
  	errors.add(:reachtime,"must be before leave time") unless reachtime<leavetime
  end	

  self.per_page=5

  
end
WillPaginate.per_page=5