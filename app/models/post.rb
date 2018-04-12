class Post < ApplicationRecord
  belongs_to :user
  scope :most_recent, -> { order(id: :desc) }

end
