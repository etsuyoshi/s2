class AddIndexTickerAndYmdToPriceseries < ActiveRecord::Migration
  def change
    add_index :Priceseries, [:ticker, :ymd], :unique => true
  end
end
