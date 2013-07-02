class PostsController < ApplicationController
  def index
    @name = "Shannon"
    @posts = Post.all
  end

  # def create
  #   Post.create(params)
  # end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to posts_path
    else
      render action: 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.new(params[:post])
    @post.save
    redirect_to @post
  end

  def delete
    @post = Post.find(params[:id])
    if @post.destroy
      redirect_to posts_path
    end

  end

end
