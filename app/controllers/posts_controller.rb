class PostsController < ApplicationController
  def show
    @post=Post.find(params[:id])
    @category= Category.find(@post.category_id)
  end

  def index
    @category= Category.find(params[:category_id])
    @posts = @category.posts
  end


  def new
    @category= Category.find(params[:category_id])
    @post = Post.new
  end

  def create
    @post = Post.new(title: params[:post][:title], body: params[:post][:body], category_id: params[:category_id])
    @post.save

    redirect_to category_post_path(@post.category_id, @post)
  end

  def destroy
    @post=Post.find(params[:id])
    @.destroy

    redirect_to
  end

end
