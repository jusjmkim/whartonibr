module PostsHelper

  def sanitize_post(post)
    sanitize post, tags: ['br', 'b', 'i', 'u']
  end

end
