class PostsController < ApplicationController

  def new
    @post = Post.new
  end

  def show
    @post = Post.find_post(params)
  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render action: 'show', status: :created, location: @post }
      else
        format.html { render action: 'new' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @post = Post.find_post(params)
  end

  def update
    @post = Post.find_post(params)

    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @post = Post.find_post(params)

    @post.destroy
    respond_to do |format|
      format.html { redirect_to '/online' }
      format.json { head :no_content }
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :author, :body, :story_type)
    end

end
