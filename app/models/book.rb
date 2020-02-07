class Book < ApplicationRecord
  belongs_to :user
  validates :name,:author, presence: true
end
