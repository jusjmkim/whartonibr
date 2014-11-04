class Post < ActiveRecord::Base
  attr_accessible :title, :author, :story_type, :body
  validates :title, :author, :body, :story_type, presence: true

  def self.stories
    Post.find_posts('story')
  end

  def self.features
    Post.find_posts('feature')
  end

  def self.editor_notes
    Post.find_posts('editor notes')
  end

  def self.story_types
    ['story', 'feature', 'editor notes']
  end

  def self.find_post(params)
    Post.find(params['id'])
  end

  def preview
    add_ellipsis(self.body.split(' ')[0..50].join(' '))
  end

  private
    def self.find_posts(type)
      Post.where(story_type: type) || []
    end

    def add_ellipsis(text)
      return text if text.size <= 50
      text + ' ...'
    end

end
