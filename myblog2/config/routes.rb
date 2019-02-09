Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # postに紐づける書き方
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end
  root 'posts#index'
end
