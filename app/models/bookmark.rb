class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, presence: true, length: { minimum: 6, message: 'Must be at least 6 characters' }
  validates :movie_id, uniqueness: { scope: :list_id, message: 'Movie already at list' }
end
