Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/index' => 'tweet_controller#index'
  get '/new' => 'tweet_controller#new'
  post '/create' => 'tweet_controller#create'
  post '/show' => 'tweet_controller#tmp'
  get '/show/:id' => 'tweet_controller#show'
  get '/destroy/:id' =>  'tweet_controller#delete'
  post '/update' => 'tweet_controller#update'
  get '/update/:id' =>  'tweet_controller#edit'
  
end
