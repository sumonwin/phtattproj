class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    has_many :travelfees
    has_many :attendances
  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :NRCnumber, :address, :date_of_entry, :dob, :gender, :leaveday, :name, :normaltravelfee, :phone, :team, :userid, :year_of_entry
  

validates :userid, numericality: {only_integer:true},presence:true
validates :name,presence: true,format: {with:%r{\A[a-zA-z][a-zA-z0-9\s]*\z}}
# validates :dob,numericality: {only_integer:true}
validates :address,presence: true
validates :phone, numericality: {only_integer:true}
validates :team,presence: true
validates :normaltravelfee, numericality: {only_integer:true},presence:true
validates :year_of_entry,presence:true,numericality: {only_integer:true},presence:true
validates :leaveday, numericality: {only_integer:true},presence:true
validates :date_of_entry,presence:true
self.per_page=5

end
WillPaginate.per_page=5