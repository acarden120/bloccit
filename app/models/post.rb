class Post < ActiveRecord::Base
  has_many :comments

  def title
    raise 'test'
  end

end