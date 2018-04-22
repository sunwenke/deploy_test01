Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users, :controllers => { :registrations => "users/registrations" }

  resources :groups do
    root 'groups#index'
  end

  resources :resumes do
    root 'resumes#index'
  end

  resources :posts do
    root 'posts#index'
  end

  resources :topics do
    root 'topics#index'
  end


end
