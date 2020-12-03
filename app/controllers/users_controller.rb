class UsersController < ApplicationController

  before_action :find_user, only: %w[show]
  
  def index
    @users = User.all
    render json: @users
  end

  def show
    render_jsonapi_response(@user)
  end

  def destroy
    if is_admin 
      @user.destroy
    end 
  end 

  private

  def find_user
    @user = User.find(params[:id])
  end

  def is_admin
    if current_user.status != "admin"
       return false
    else 
      return true
    end 
  end 

end