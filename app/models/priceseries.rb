class Priceseries < ActiveRecord::Base
# Priceseries.column_names
# ["id", "ticker", "name", "open", "high", "low", "close", "volume", "ymd", "created_at", "updated_at"]

  # tikerとymdは複合ユニーク特性
  validates :ticker,
  uniqueness: {
    message: "同じticker+ymdのレコードがすでに存在します",
    scope: [:ymd]
  }
end
