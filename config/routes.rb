CardsAppRoR::Application.routes.draw do
  resources :games

  resources :players

  resources :decks

  resources :cards

   root :to => "home#index"
end
