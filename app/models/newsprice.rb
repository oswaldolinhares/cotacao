class Newsprice < ApplicationRecord
  def self.refresh
=begin
    require 'json'
    require 'open-uri'
    puts Stock.all
    Stock.each do |acao|
      url = 'https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol='+acao+'&interval=5min&outputsize=compact&apikey=FI7O2A09GUNKCXYM'
      doc = JSON.load(open(url))
      company = doc.values[0].values[1]
      price = doc.values[1].values[1].values[3]
      Newsprice.create company: company, price: price

    end
=end
  end
end
