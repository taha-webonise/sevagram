# user model
class User < ActiveRecord::Base
  has_many :tags
end
