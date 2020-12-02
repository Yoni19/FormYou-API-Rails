class UsersController < ApplicationController

  before_action :find_user, only: %w[show]
  
  def index
    @users = User.all
    render json: @users
  end

  def show
    render_jsonapi_response(@user)
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

end