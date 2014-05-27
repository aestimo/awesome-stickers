class CreateStickers < ActiveRecord::Migration
  def change
    create_table :stickers do |t|
      t.string :photo
      t.string :name
      t.text :description
      t.string :tags

      t.timestamps
    end
  end
end
