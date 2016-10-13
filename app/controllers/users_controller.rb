class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :new]
  before_action :authenticated_user, only: [:index]
  
  def new
    
  end

  def index
    @users = User.all
  end

  def show
  end

  def edit
    
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to dashboard_path, notice: 'User was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit!
  end

  def authenticated_user
    unless current_user.present?
      redirect_to new_user_registration_path, notice: "create an investor account below to proceed"
    end
  end


end
