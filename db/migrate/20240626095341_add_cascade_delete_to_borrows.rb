class AddCascadeDeleteToBorrows < ActiveRecord::Migration[7.1]
    def change
      # Remove the existing foreign key
      remove_foreign_key :borrows, :books
  
      # Add a new foreign key with the cascade delete option
      add_foreign_key :borrows, :books, on_delete: :cascade
    end
  end
  