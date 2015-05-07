class Author < ActiveRecord::Base
  has_many :books, dependent: :destroy

  validates :name, presence: true, length: {maximum: 250}, :allow_blank => false
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i}, :allow_blank => false
end
