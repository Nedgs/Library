class BorrowsController < ApplicationController
    def create
      @borrow = Borrow.new(borrow_params)
      @borrow.started_at = Time.current
  
      if @borrow.save
        redirect_to @borrow.book, notice: 'Book was successfully borrowed.'
      else
        redirect_to @borrow.book, alert: 'Book is already borrowed.'
      end
    end
  
    def destroy
      @borrow = Borrow.find(params[:id])
      @borrow.update(ended_at: Time.current)
      redirect_to @borrow.book, notice: 'Book was successfully returned.'
    end
  
    private
  
    def borrow_params
      params.require(:borrow).permit(:user_id, :book_id)
    end
end
  