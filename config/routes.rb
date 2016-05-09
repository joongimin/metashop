Rails.application.routes.draw do
  resources :brands do
    resources :brand_links, except: :show
  end

  controller :home do
    get :admin
    get :about
  end

  root 'home#index'
end
