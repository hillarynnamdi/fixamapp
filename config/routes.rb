Rails.application.routes.draw do




  resources :bookings,path: '/dashboard/bookings'  do
    collection do 
      get 'delivered'
      get 'scheduled'
      get 'pickedup'

    end
end

resources :partners,path: '/dashboard/partners'

resources :phonenumber,path: '/user/phonenumber'


resources :account do 
collection do 
      get 'change_password'
      get 'delete_account'
      patch 'update_password'
      patch 'info'
end

member do 
delete 'remove_user'

end


end



devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" } 

#map.logout '/users/sign_out', :controller => 'sessions', :action => 'destroy'

   resources :states, path: '/dashboard/settings/states'
  resources :areas, path: '/dashboard/settings/areas'

  resources :places,path: '/dashboard/settings/places'

  resources :cities ,path: '/dashboard/settings/cities'

  resources :states do 
        resources :cities do
        resources :areas  do
        resources :places

      end
    
end
  end



root 'home#index'

  resources :home
  
  resources :feed, path:'/dashboard/feed'

  devise_for :admins


#  resources :admins do
 #   collection do
  #  get 'show'
   ##get 'feedback'
   
  #end
  #member do
   # get 'index' => 'admins#index'
  #end
  #end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  
    resources :dashboard do
      collection do
        get 'feedback'
      end
    end
    
    resources :orders do
    collection do 
      post 'first_form' 
      post 'second_form'
      post 'third_form'
      post 'fourth_form'
      get 'pending'
      get 'delivered'
      get 'cancelled'
      get 'scheduled'
      get 'pickedup'
    end

    member do 
      patch 'cancel'
      patch 'reorder'
    end

end


  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
