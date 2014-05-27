class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.binary :photo
      t.string :name
      t.text :description, limit: 50
      t.string :size
      t.integer :buy_price
      t.integer :sell_price

      t.timestamps
    end
  end
end
