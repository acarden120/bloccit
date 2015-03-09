class Post < ActiveRecord::Base
  has_many :comments
  def comments
    Comment.where(post_id: self.id)
  end
end
