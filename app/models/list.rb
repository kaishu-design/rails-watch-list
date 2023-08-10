class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, uniqueness: true, presence: true
end

# has a name
# name cannot be blank
# name is unique (FAILED - 7)
# has many bookmarks (FAILED - 8)
# has many movies (FAILED - 9)
# should destroy child saved movies when destroying self (FAILED - 10)
