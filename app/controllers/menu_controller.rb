class MenuController < ApplicationController
  def index
      @category = Category.all
      @product = Menu.all
  end
end
