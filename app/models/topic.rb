class Topic < ActiveRecord::Base
  require 'paginate.rb'
  
  has_many :posts
end