class Post < ActiveRecord::Base
  attr_accessible :title, :author, :story_type, :body

  def self.stories
    Post.find_posts('story')
  end

  def self.features
    Post.find_posts('feature')
  end

  def self.editor_notes
    Post.find_posts('editor_notes')
  end

  def self.story_types
    ['story', 'feature', 'editor notes']
  end

  def self.find_post(params)
    Post.find(params['id'])
  end

  private
    def self.find_posts (type)
      Post.where(story_type: type)
    end

end
