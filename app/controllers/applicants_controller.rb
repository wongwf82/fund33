class ApplicantsController < ApplicationController

  def index
    @applicant = Applicant.new
  end

  def create
    @applicant = Applicant.new(params[:applicant])

    if @applicant.save
      UserMailer.applicant_resume(@applicant).deliver
      flash[:success] = "Thank you! We will review your application as soon as we can."
      render 'index'
    else
      flash[:error] = @applicant.errors.full_messages.to_sentence
      render 'index'
    end
  end

end
