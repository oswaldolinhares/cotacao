class CreateNewsprices < ActiveRecord::Migration[5.2]
  def change
    create_table :newsprices do |t|
      t.string :company
      t.string :price

      t.timestamps
    end
  end
end
