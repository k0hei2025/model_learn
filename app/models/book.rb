class Book < ApplicationRecord
  has_many :reader
  has_many :author, through: :reader
end
