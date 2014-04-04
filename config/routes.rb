Recipes::Application.routes.draw do
  match('recipes', {:via => :get, :to => 'recipes#index'})
  match('recipes/new', {:via => :get, :to => 'recipes#new'})
  match('recipes', {:via => :post, :to => 'recipes#create'})
  match('recipes/:id', {:via => :get, :to => 'recipes#show'})

  # match('recipes/:name', {:via => [:patch, :put], :to => 'recipes#update'})
  # match('recipes/destroy', {:via => :delete, :to => 'recipes#destroy'})
end
