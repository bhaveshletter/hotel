Rails.application.routes.draw do
  devise_for :users, controllers: { confirmations: 'confirmations' }
  root 'welcome#index'
  resources :hotelapps
  resources :rooms do
  	collection do
  		get "room_type"
  	end	
  end
  resources :bookings	do
    collection do
      get "booking_info"
    end  
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
