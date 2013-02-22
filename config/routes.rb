CardsAppRoR::Application.routes.draw do

  #get 'assign_player', :on => :member
  resources :decks do
    resources :cards
  end
  resources :games do
    resources :players
  end

  resources :game_logic do
    get 'start', :on => :member
  end

  root :to => "home#index"
end
