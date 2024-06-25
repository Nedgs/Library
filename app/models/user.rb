class User < ApplicationRecord
    has_secure_password
  
    has_many :borrows
    has_many :books, through: :borrows
  
    validates :email, presence: true, uniqueness: true
  
    def current_borrowed_books
      books.joins(:borrows).where('borrows.ended_at IS NULL')
    end
end
  