class User < ActiveRecord::Base
    #all the users are my friends
    has_many :friendship_friending, foreign_key: :friend_id, class_name:"Friendship"
    has_many :friending, through: :friendship_friending, source: :friendee

    #all the users that are friends with me
    has_many :friendship_friends, foreign_key: :friendee_id, class_name:"Friendship"
    has_many :friends, through: :friendship_friends, source: :friend

end
