class CatsController < ApplicationController
  def index
    @kitty = Cat.all
  end

  def show
    @kitty = Cat.find(params[:id])
  end

end
