class Post < ApplicationRecord
  belongs_to :blog
  has_many :messages, dependent: :destroy
  # when a post is destroyed, all associated messages are destroyed too
  validates :title, :content, presence: true
  validates :title, length: { in: 7..40 }
end
