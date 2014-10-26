class HomeController < ApplicationController
  def index
  end

  def about 
    render :about 
  end 

  def board
    render :board
  end

  def online
    @stories = Post.stories
    @features = Post.features
    @editor_notes = Post.editor_notes
    render :online
  end

  private
    def post_params
      params.require(:post).permit(:title, :author, :body, :type)
    end

end
