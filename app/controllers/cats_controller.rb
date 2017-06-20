class CatsController < ApplicationController
  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find_by(id: params[:id])
    if @cat
      # render json: @cat
      render :show
    else
      redirect_to cats_url
    end
  end

  def new
    render :new
  end


  def create
    render json: "create new cat"
  end

  private
  def cats_params
    params.require(:cat).permit(:name, :birth_date, :sex, :color)
  end
end
