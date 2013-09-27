class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
    if @user.save
#      UserMailer.registration_confirmation(@user).deliver
#      flash[:success] = "Thank you! We will send you an invite when the crowdfunding campaign kicks off."
      redirect_to edit_user_path(@user)
    else
      flash[:error] = @user.errors.full_messages.to_sentence
      redirect_to root_url
    end

#    respond_to do |format|
#      if @user.save
#        format.html { redirect_to @user, notice: 'User was successfully created.' }
#        format.json { render json: @user, status: :created, location: @user }
#      else
#        format.html { render action: "new" }
#        format.json { render json: @user.errors, status: :unprocessable_entity }
#      end
#    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def submit_entry
    @user = User.find(params[:id])
    @user.updating_user = true
    if @user.update_attributes(params[:user])
      UserMailer.user_entry(@user).deliver
      flash[:success] = "Thank you for applying! We will be reaching out to your shortly for final application steps and requirements. 
                         You can reach us at support@fund33.com for any questions."
      redirect_to root_url
    else
      flash[:error] = @user.errors.full_messages.to_sentence
      render 'edit'
    end

#    respond_to do |format|
#      if @user.update_attributes(params[:user])
#        format.html { redirect_to @user, notice: 'User was successfully updated.' }
#        format.json { head :no_content }
#      else
#        format.html { render action: "edit" }
#        format.json { render json: @user.errors, status: :unprocessable_entity }
#      end
#    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end
