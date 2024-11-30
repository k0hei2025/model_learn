class Author < ApplicationRecord
  validates :name, uniqueness: true
  has_many :reader 
  has_many :books, through: :reader
end
