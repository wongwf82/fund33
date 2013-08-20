class Applicant < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :city, :country, :phone, :email, :cv, :position
  has_attached_file :cv,
					:url => "public/system/attachments/:filename",
					:path => "public/system/attachments/:filename"		

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :city, presence: true
  validates :phone, presence: true
  validates :cv, presence: true
  validates_attachment_size :cv, :less_than => 2.megabytes, :message => 'should be less than 2MB.'	
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
  					uniqueness: { case_sensitive: false }				

end
