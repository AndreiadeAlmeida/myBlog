class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :comments
  validates :title, :description, :image_url, presence:true

  scope :most_recent, -> { order(id: :desc) }

  def self.search(search_term)
    Post.where("title LIKE ?", "%#{search_term}%")
  end
end
