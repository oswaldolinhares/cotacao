class CreateStocks < ActiveRecord::Migration[5.2]
  def change
    create_table :stocks do |t|
      t.string :title
      t.string :last_price

      t.timestamps
    end
  end
end
