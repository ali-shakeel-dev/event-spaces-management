Rails.application.routes.draw do
  root "homes#index"
  get 'spaces/list_space', to: 'spaces#new', as: 'list_space'
  resources :spaces, param: :slug do
    member do
      get 'inquire', to: 'spaces#inquire'
      post 'submit_inquiry', to: 'spaces#submit_inquiry'
    end
  end

  get 'spaces', to: redirect('/')
  get 'list_your_space', to: "list_your_space#index"
  get 'terms_and_policies', to: "terms#index"
  get 'contact', to: 'contact#index'
  get 'blog', to: "blog#index"
  get 'venues', to: "venues#index"
  get 'events', to: "events#index"
  get 'locations', to: "locations#index"
end
