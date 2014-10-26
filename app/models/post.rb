class Post < ActiveRecord::Base

  def self.stories
    find_posts('story')
  end

  def self.features
    find_posts('feature')
  end

  def self.editor_notes
    find_posts('editor_notes')
  end

  private
    def find_posts(type)
      posts = Post.find_by(type: type).all
      return [posts[0], posts[1]]
    end

end
