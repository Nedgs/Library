class Borrow < ApplicationRecord
    belongs_to :user
    belongs_to :book
  
    validates :started_at, presence: true
  
    validate :book_not_borrowed, on: :create
  
    def book_not_borrowed
      if Borrow.where(book_id: book_id, ended_at: nil).exists?
        errors.add(:book, 'is already borrowed')
      end
    end
end
  