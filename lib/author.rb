class Author
  attr_accessor :name, :author
  @@counter = 0
  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post_title)
    @posts << post_title
    post_title.author  = self
    @@counter +=1
  end

  def add_post_by_title(post_title)
    posting = Post.new(post_title)
    @posts << posting
    posting.author = self
    @@counter +=1
  end

  def posts
    @posts
  end

  def self.post_count
    @@counter
  end

end
