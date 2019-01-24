class Newsprice < ApplicationRecord
  def self.refresh
    require 'json'
    require 'open-uri'
    url = 'https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=PETR4.SA&interval=1min&outputsize=compact&apikey=FI7O2A09GUNKCXYM'
    doc = JSON.load(open(url))
    company = doc.values[0].values[1]
    price = doc.values[1].values[1].values[3]
    Newsprice.create company: company, price: price

  end
end
