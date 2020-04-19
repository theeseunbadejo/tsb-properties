class CreateProperties < ActiveRecord::Migration[6.0]
  def change
    create_table :properties, id: :string do |t|
      t.references :account, foreign_key: true, type: :string, index: true
      t.string :name
      t.string :address
      t.string :price
      t.string :integer
      t.integer :rooms
      t.integer :bathrooms
      t.string :photo

      t.timestamps
    end
  end
end
