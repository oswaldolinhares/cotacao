class HardWorker
  include Sidekiq::Worker

  def perform()
    require 'json'
    require 'open-uri'
    acoes = Stock.all
    acoes.each do |acao|
      puts acao.title
      url = "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=#{acao.title}&interval=5min&outputsize=compact&apikey=FI7O2A09GUNKCXYM"
      doc = JSON.load(open(url))
      puts company = doc.values[0].values[1]
      company = doc.values[0].values[1]
      price = doc.values[1].values[1].values[3]
      Newsprice.create company: company, price: price
    end
=begin
    require 'json'
    require 'open-uri'
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
