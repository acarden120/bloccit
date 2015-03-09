class Comment < ActiveRecord::Base
  belongs_to :post
  # Implicitly defined for each Comment object
  def post
    Post.find_by_id(self.post_id)
  end
end