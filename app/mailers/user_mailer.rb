class UserMailer < ActionMailer::Base
  default :from => "fai@memberpass.com"

  def registration_confirmation(user)
  	@user = user
  	
    subject = 'Registration from Fund33.com'
  	mail(:to => 'wongwf82@gmail.com', :subject => subject)  	
#  	mail(:to => user.email, :subject => 'Expression of interest from MemberPass.com - Landing Page v1')
  end
end
