class Book < ApplicationRecord
    has_many :borrows
    has_many :users, through: :borrows
  
    validates :title, :author, :publish_year, presence: true
  
    def self.search(query)
      if query.present?
        where('title LIKE ? OR author LIKE ? OR publish_year LIKE ?', "%#{query}%", "%#{query}%", "%#{query}%")
      else
        all
      end
    end
end
  