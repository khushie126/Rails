class CreateJoinTableBookOrder < ActiveRecord::Migration[8.0]
  def change
    create_join_table :books, :orders, table_name: "books_orders" do |t|
       t.index :book_id
       t.index :order_id
    end
  end
end
