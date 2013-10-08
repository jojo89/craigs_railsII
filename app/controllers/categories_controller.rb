class CategoriesController < ApplicationController
  def index
    @categories= Category.all
  end

  def show

    @category = Category.find(params[:id])
    @posts = @category.posts
  end

  def new
    @category= Category.new
  end

  def create
    p params
    @category= Category.create(name: params[:category][:name])

    redirect_to category_path(@category)
  end

end
