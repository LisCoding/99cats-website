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
    @cat = Cat.new
    render :new
  end

  def edit
    @cat = Cat.find_by(id: params[:id])
    render :edit
  end

  def update
    @cat = Cat.find_by(id: params[:id])
    if @cat.update_attributes(cats_params)
      redirect_to cat_url(@cat)
    else
      render :edit
    end

  end

  def create
    @cat = Cat.new(cats_params)
    if @cat.save
      redirect_to cat_url(@cat)
    else
      render :new
    end
  end

  private
  def cats_params
    params.require(:cat).permit(:name, :birth_date, :sex, :color, :description)
  end
end
