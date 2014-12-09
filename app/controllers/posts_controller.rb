class PostsController < ApplicationController
  before_filter :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def index
    @stories = Post.find_posts('story')
    @features = Post.find_posts('feature')
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find_post(params)
  end

  def create
    @post = Post.new(post_params)
    @post.position = Post.find_posts(post_params[:story_type]).last.position

    respond_to do |format|
      if @post.save
        format.html { redirect_to '/#post-index', notice: 'Post was successfully created.' }
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
    respond_to do |format|
      format.html {
        @post = Post.find_post(params)
        if @post.update(post_params)
          redirect_to '/#post-index', notice: 'Post was successfully updated.'
        end
      }

      format.json {
        @current_post = Post.find(params[:currentPostId])
        @target_post = Post.find(params[:targetPostId])

        @current_post.position= params[:targetPostPosition]
        @current_post.save
        @target_post.position= params[:currentPostId]
        @target_post.save

        redirect_to '/#post-index'
      }
    end
  end

  def destroy
    @post = Post.find_post(params)

    @post.destroy
    respond_to do |format|
      format.html { redirect_to '/#post-index' }
      format.json { head :no_content }
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :author, :body, :story_type, :image, :position)
    end

end
