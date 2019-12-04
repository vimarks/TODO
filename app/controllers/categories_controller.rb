class CategoriesController < ApplicationController

  def index
    categories = Category.all

    render json: categories
  end

  def create
    categoryName = params["name"]
    user_id = params["user_id"]

    cat = Category.new(
      name: categoryName,
      user_id: user_id)
    if cat.save
      render json:{
        name: cat.name,
        user_id: cat.user_id,
        id: cat.id
      }
    else
      render json: {
        status: 400,
        message: "these the cats you're looking for"
      }
    end

  end
end
