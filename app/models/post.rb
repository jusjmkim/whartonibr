class Post < ActiveRecord::Base

  def self.stories
    Post.find_posts('story')
  end

  def self.features
    Post.find_posts('feature')
  end

  def self.editor_notes
    Post.find_posts('editor_notes')
  end

  private
    def self.find_posts (type)
      Post.find_by(type: type).all
    end

end
