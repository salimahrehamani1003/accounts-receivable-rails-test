Rails.application.routes.draw do
  resources :line_items
  resources :invoices do
    get 'convert_to_yen', on: :member
  end
  resources :services
  resources :products
  resources :clients

  root to: redirect("/invoices")
end
