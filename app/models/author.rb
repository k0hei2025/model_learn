class Author < ApplicationRecord
  validates :name, uniqueness: true
  has_many :books
end
