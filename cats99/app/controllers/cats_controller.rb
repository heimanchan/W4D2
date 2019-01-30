class CatsController < ApplicationController
  def create
    cat = Cat.new(cat_params)

    if cat.save
      redirect_to cats_url
    else
      render cat.errors.full_messages
    end
  end
  
  def index
    @cat = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def new
    render :new
  end

  def update  #patch
    @cat = Cat.update(params[:id], cat_params)
    if @cat.save
      redirect_to cat_url
    else
      render @cat.errors.full_messages
    end
  end
  
  def edit
    @cat = Cat.find(params[:id])
  end

  private
  def cat_params
    params.require(:cat).permit(:birth_date, :color, :name, :sex, :description)
  end

end
