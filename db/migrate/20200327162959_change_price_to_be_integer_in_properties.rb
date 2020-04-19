class ChangePriceToBeIntegerInProperties < ActiveRecord::Migration[6.0]
  def change
    change_column :properties, :price, :integer
  end
end
