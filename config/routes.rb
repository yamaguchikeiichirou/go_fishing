Rails.application.routes.draw do



  devise_for :anglers, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_scope :angler do
    post 'public/guest_sign_in', to: 'public/sessions#guest_sign_in'
  end

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
    sessions: "admin/sessions"
  }

  namespace :admin do
    root to: 'homes#top'
    resources :fishing_successes, only: [:index, :show, :destroy]
    resources :anglers, only: [:index, :show, :destroy]
    resources :comments, only: [:destroy]
  end


  scope module: :public do
    root to: 'homes#top'
    get 'sarch'=>'fishing_successes#search'
    resources :fishing_successes, only: [:indeex, :show, :new, :create, :destroy]
    resources :anglers, only: [:show, :edit, :verification, :update, :destroy]
    
    resources :comments, only: [:create, :destroy]
    resources :favorites, only: [:create, :destroy]
  end

end
