class Category < ActiveRecord::Base
  has_many :books, dependent: :destroy

  validates :name, presence: true, length: {maximum: 250}, allow_blank: false
end