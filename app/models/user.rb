class User < ActiveRecord::Base
  attr_accessible :email, :name, :phone, :company, :comments,
  				  :first_name, :last_name, :city, :company_name, :website_url,
  				  :question1, :question2, :question3, :question4,
  				  :question5, :question6, :question7, :question8,
  				  :deck
  attr_accessor :updating_user

  has_attached_file :deck,
					:url => "public/system/attachments/:filename",
					:path => "public/system/attachments/:filename"	

  validates_presence_of :phone, :first_name, :last_name, :city, :company_name, :website_url,
  				  	:question1, :question2, :question3, :question4,
  					:question5, :question6, :question7, :question8,
  				  	:deck, :if => :is_updating_user?
  validates_attachment_size :deck, :less_than => 2.megabytes, :message => 'should be less than 2MB.'
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
#  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, 
#  					uniqueness: { case_sensitive: false }
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

  private

    def is_updating_user?
      updating_user
    end

end
