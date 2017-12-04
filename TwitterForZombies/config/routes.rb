Rails.application.routes.draw do
  # math 'zombies/:id/decomp' => "Zombies#decomp", :as => :decomp_zombie
  resources :zombies do
    resources :tweets
    get :decomp, on: :member
    put :custom_decomp, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
