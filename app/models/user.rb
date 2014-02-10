class User < ActiveRecord::Base
  attr_accessible :NRCnumber, :address, :date_of_entry, :dob, :gender, :leaveday, :name, :normaltravelfee, :phone, :team, :userid, :year_of_entry
  

validates :userid, numericality: {only_integer:true}
validates :name,presence: true,format: {with:/\A[a-zA-Z0-9]+\z/,message:"only letters allowed"}
# validates :dob,numericality: {only_integer:true}
validates :address,presence: true
validates :phone, numericality: {only_integer:true}
validates :team,presence: true
validates :normaltravelfee, numericality: {only_integer:true}
validates :year_of_entry,presence:true,numericality: {only_integer:true}
validates :leaveday, numericality: {only_integer:true}
validates :date_of_entry,presence:true
end
