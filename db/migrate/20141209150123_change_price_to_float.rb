class ChangePriceToFloat < ActiveRecord::Migration
  def change
    change_column :bouquets, :price, :float
  end
end
