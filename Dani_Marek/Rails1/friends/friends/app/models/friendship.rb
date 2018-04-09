class Friendship < ActiveRecord::Base
  belongs_to :friend, required: true, class_name:"User"
  belongs_to :friendee, required: true, class_name:"User"
end
