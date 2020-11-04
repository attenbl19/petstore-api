class CategoriesController < ApplicationController
  before_action  only: [:show, :update]

  # GET /categories
  def index
    @categories = Category.all

    render json: @categories
  end

  # # GET /categories/1
  # def show
  #   render json: @category
  # end

  

  

  
end
