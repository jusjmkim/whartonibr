class HomeController < ApplicationController
  def index
    @stories = Post.find_posts('story')
    @features = Post.find_posts('feature')
  end

  def about 
    render :about 
  end 

  def board
    render :board
  end

  private
    def post_params
      params.require(:post).permit(:title, :author, :body, :type)
    end

end
