class ChangeDatatypeYmdOfPriceseries < ActiveRecord::Migration
  def change
    change_column :priceseries, :ymd, :integer
  end
end
