# tags for user
class Tag < ActiveRecord::Base
  belongs_to :user
end
