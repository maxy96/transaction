Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :generate_transactions, only: [:index]
      resources :client, only: [:index]
      resources :clients_details, only: [:index]
      resources :payments, only: [:index]

      resources :client, only: [:index] do
        resources :transaction, only: [:index]
      end
    end
  end
end
