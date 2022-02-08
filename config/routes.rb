Rails.application.routes.draw do
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root 'articles#index'
  
  resources :articles do
    resources :comments
  end

  namespace :apis do
    namespace :articles do
      namespace :v1 do
        get 'articles_json', to: "articles#articles_json"
      end
    end
  end
end
