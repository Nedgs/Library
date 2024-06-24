class Book < ApplicationRecord
    has_many :borrows
    has_many :users, through: :borrows
  
    validates :title, :author, :publish_year, presence: true
end
  