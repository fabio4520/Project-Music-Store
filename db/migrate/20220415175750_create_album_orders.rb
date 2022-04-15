class CreateAlbumOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :album_orders do |t|
      t.references :albums, null: false, foreign_key: true
      t.integer :quantity
      t.references :orders, null: false, foreign_key: true

      t.timestamps
    end
  end
end
