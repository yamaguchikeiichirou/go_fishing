Rails.application.routes.draw do



  namespace :admin do
    get 'tags/new'
  end
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
    resources :tags, only: [:new, :create, :destroy]
  end


  scope module: :public do
    root to: 'homes#top'
    get 'search'=>'fishing_successes#search'
    resources :fishing_successes, only: [:index, :show, :new, :create, :destroy] do
      resource :favorites, only: [:create, :destroy]
      resources :comments, only: [:create, :destroy]
    end
    get 'anglers/favorites'=>'anglers#my_favorite'
    get 'anglers/fishing_successes'=>'anglers#my_post'
    get 'anglers/mypage'=>"anglers#show"
    get 'anglers/information/edit'=>"anglers#edit"
    get 'anglers/withdrawal/verification'=>"anglers#verification"
    patch 'anglers/information'=>"anglers#update"
    delete 'anglers/withdrawal'=>"anglers#destroy"
  end

end
