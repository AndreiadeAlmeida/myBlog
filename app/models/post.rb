class Post < ApplicationRecord

  scope :most_recent, -> { order(id: :desc) }


  def self.search(search_term)
    if Rails.env.production?
      Post.where("name ilike ?", "%#{search_term}%")
    else
      Post.where("name LIKE ?", "%#{search_term}%")
    end
  end
  
end
