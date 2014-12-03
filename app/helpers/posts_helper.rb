module PostsHelper

  def sanitize_post(post)
    sanitize post, tags: ['br', 'b', 'i', 'u']
  end

  def sanitize_preview(post)
    post.gsub(/<\/?[a-zA-Z]+>/, '')
  end

end
