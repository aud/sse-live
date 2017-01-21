Rails.application.routes.draw do
  root to: 'live#index'
  get 'feed', to: 'live#feed'
end
