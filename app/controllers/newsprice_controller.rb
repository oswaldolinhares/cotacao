class NewspriceController < ApplicationController
  def index
    #HardWorker.perform_in(2.minutes)
    @stock = Stock.all
    @newsprice = Newsprice.all
  end
end
