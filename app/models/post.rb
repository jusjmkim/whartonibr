class Post < ActiveRecord::Base
  attr_accessible :title, :author, :story_type, :body, :image, :post
  validates :title, :author, :body, :story_type, presence: true
  has_attached_file :image, styles: { scale: '450x>',
                                      modal: '500x>' }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  def self.story_types
    ['story', 'feature']
  end

  def self.find_post(params)
    Post.find(params['id'])
  end

  def preview
    add_ellipsis(self.body.split(' ')[0..50].join(' '))
  end

  def self.find_posts(type)
    Post.where(story_type: type).order('created_at DESC').all
  end

  private
    def add_ellipsis(text)
      return text if text.size <= 50
      text + ' ...'
    end

end
