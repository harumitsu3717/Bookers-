Rails.application.routes.draw do
  root to: 'homes#top'
  get '/bookers' => 'homes#top'
  
  resources :books, except: :destroy
  delete 'books/:id', to: 'books#destroy', as: 'destroy_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
