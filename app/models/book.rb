## Book model

class Book < ActiveRecord::Base
  belongs_to :author
  belongs_to :category

  validates :name, presence: true, length: {maximum: 250}, allow_blank: false
  validates :price, presence: true, allow_blank: false
end