Rails.application.routes.draw do

	mount ActionCable.server, at: '/cable'	
  devise_for :users

  resources :chatrooms do
    resource :chatroom_users
    resources :messages
  end

  resources :direct_messages

  root to: "chatrooms#index"
end
