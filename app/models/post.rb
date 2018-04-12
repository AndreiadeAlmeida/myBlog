class Post < ApplicationRecord
  belongs_to :user
  scope :most_recent, -> { order(id: :desc) }

  def self.search(search_term)
    Post.where("name LIKE ?", "%#{search_term}%")
  end
end
