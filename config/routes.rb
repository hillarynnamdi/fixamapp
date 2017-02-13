Rails.application.routes.draw do

  resources :blog  do
    collection do 
      get 'mobiles'
      get 'internet'
      get 'tablets'
      get 'gaming'
      get 'cameras'
      get 'socials'
      get 'apps'
      get 'pc_laptops'
      get 'startups'
      get 'tech'
      get 'science'
      get 'audio_videos'
      get 'telecom'
      patch 'unsubscribe'

    end

end

  resources :bookings,path: '/dashboard/bookings'  do
    collection do 
      get 'delivered'
      get 'scheduled'
      get 'pickedup'

    end
end

resources :subscriptions


      get "/404", :to => "errors#not_found"
      get "/422", :to => "errors#unacceptable"
      get "/500", :to => "errors#internal_error"

resources :partners,path: '/dashboard/partners'

resources :phonenumber,path: '/user/phonenumber'
resources :account do 
collection do 
      get 'change_password'
      patch 'update_password'
      get 'delete_account'
      get 'info' 
      patch 'update_account'
      delete 'remove_user'
end


end


devise_for :users,:path_names => {:sign_in => 'login', :sign_up => 'register', :sign_out => 'logout'}, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" , :path => "/", registrations: 'registrations'} 

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

  resources :terms

  resources :feed do
    collection do
      post 'send_feed'
    end
  end

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
      post 'track_order'
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
