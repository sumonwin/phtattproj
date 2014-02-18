class Timetable < ActiveRecord::Base
  attr_accessible :classname, :duration, :endtime, :friday, :jplevel, :monday, :saturday, :school, :startdate, :starttime, :sunday, :thursday, :tuesday, :wednesday
  validates :classname,presence:true
  #has_many:travelfees
  #has_many:attendances,:through => :travelfees

  self.per_page=5
end
WillPaginate.per_page=5