Rails.application.routes.draw do
    devise_for :users

    resources :chatrooms do
        # This is a nested route.
        # This'll be the easiest way to get the id of th user and the chatroom.
        resource :chatroom_users
    end

    root to: "chatrooms#index"
end
