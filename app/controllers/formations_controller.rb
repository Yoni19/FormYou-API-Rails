class FormationsController < ApplicationController
  before_action :set_formation, only: [:show, :update, :destroy]
  before_action :authenticate_user!, only: [:create]


  def index
    @formations = Formation.all
    render json: @formations
  end

  def show
    render json: @formation
  end

  def create 
    @formation = Formation.new(formation_params)
    @formation.user_id = current_user.id
    if @formation.save
      render json: @formation, status: :created, location: formations_url(@formation)
    else
      render json: @formation.errors, status: :unprocessable_entity
    end
  end 




  private 

  def set_formation
    @formation = Formation.find(params[:id])
  end 

  def formation_params
    params.require(:formation).permit(:title, :description)
  end 
end
