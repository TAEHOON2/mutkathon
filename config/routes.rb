Rails.application.routes.draw do
  get 'woonjang/testpage'
  devise_for :users
  resources :posts
  
  root 'home#index'
  
  post 'home/siganpagecreate'
  post 'home/gyosipagecreate' #root page에서 교시/시간으로 찾기 누르면 모델에 새로운 방 만들어주는 것
  
  # get 'home/gyosipage'
  # get 'home/siganpage'  #처음 약속 create후 redirection 할 주소 지정
  get "home/gyosipage/:yakdokroom_roomnumber"=> 'home#gyosipage'
  # get 'home/gyosipage/:yakdokroom_id'=> 'home#gyosipage'
  get 'home/siganpage/:yakdokroom_roomnumber'=> 'home#siganpage'
  
 
  post 'home/gyosiyakdokcreate'
  post 'home/siganyakdokcreate' #시간 체크해서 제출 누르면 gyosiyakdok 또는 siganyakdok에 저장되는 액션
  
  get 'home/gyosiresult'  #redirection(개별 교시약속에 대한 result보여주기)
  get 'home/siganresult'  #redirection(개별 시간약속에 대한 result보여주기)
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'ㄴ

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
