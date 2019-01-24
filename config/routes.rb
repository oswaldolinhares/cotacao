Rails.application.routes.draw do
  get 'newsprice/index'
  root to: 'newsprice#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
