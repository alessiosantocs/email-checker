EmailChecker::Application.routes.draw do
  resources :statuses

  root :to => 'statuses#new'
end
