class CategoriesController < ApplicationController

  def index
    categories = Category.all

    render json: categories
  end

  def create
    categoryName = params["name"]
    Category.create(name: categoryName)

    render json: {name: categoryName}

  end
end
