CardsAppRoR::Application.routes.draw do
  resources :games  do
    get 'assign_player', :on => :member
  end

  resources :players

  resources :decks do
    resources :cards
  end

   root :to => "home#index"
end
