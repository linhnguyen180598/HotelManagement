class MenusController < ApplicationController

  def show
    @dishes = Dish.all
  end
end
