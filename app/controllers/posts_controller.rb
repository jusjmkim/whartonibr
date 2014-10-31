class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def show
    @post = Post.find_post(params)
  end

  def create

  end

  def edit
    @post = Post.find_post(params)
  end

  def update

  end

  def destroy

  end

end
