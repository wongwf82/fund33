class UserMailer < ActionMailer::Base
  default :from => "fai@memberpass.com"
  default :to => 'thefund33@gmail.com'

  def registration_confirmation(user)
  	@user = user
  	mail(:subject => 'Registration from Fund33.com')  	
  end

  def applicant_resume(applicant)
  	@applicant = applicant
  	@applicant.save
    attachments[@applicant.cv_file_name] = File.read('public/system/attachments/' << @applicant.cv_file_name)
  	mail(:subject => 'Job Application from Fund33.com')  
  end

end
