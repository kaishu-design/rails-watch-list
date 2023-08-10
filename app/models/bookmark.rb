class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 7 }
  validates_uniqueness_of :movie_id, { scope: :list_id }
end

# has a comment (FAILED - 1)
# comment cannot be shorter than 6 characters (FAILED - 2)
# belongs to a movie
# belongs to an list (FAILED - 3)
# movie cannot be blank (FAILED - 4)
# list cannot be blank (FAILED - 5)
# is unique for a given movie/list couple (FAILED - 6)
