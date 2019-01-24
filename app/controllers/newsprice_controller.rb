class NewspriceController < ApplicationController
  def index
    @newsprice = Newsprice.all
  end
end
