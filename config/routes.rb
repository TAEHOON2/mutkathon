Rails.application.routes.draw do
  resources :meetings
  root 'home#index'
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :posts
  
  get 'woonjang/jtest'
  get 'woonjang/testpage'
  get 'woonjang/sigangiban'
  get 'woonjang/calendartry'
  
  post 'gyosiyakdoks/gyosipagecreate'
  post 'home/siganpagecreate'
   #root page에서 교시/시간으로 찾기 누르면 모델에 새로운 방 만들어주는 것
  

  get "home/gyosipage/:yakdokroom_roomnumber"=> 'home#gyosipage'
  get 'home/siganpage/:yakdokroom_roomnumber'=> 'home#siganpage' #고유의 아이디를 가진 room으로 이동
  
  post 'gyosiyakdoks/gyosiyakdokcreate'
  post 'home/siganyakdokcreate' #시간 체크해서 제출 누르면 gyosiyakdok 또는 siganyakdok에 저장되는 액션
  
  get 'gyosiyakdoks/gyosiresult/:yakdokroom_roomnumber' => 'gyosiyakdoks#gyosiresult' #redirection(개별 교시약속에 대한 result보여주기)
  get 'home/siganresult'  #redirection(개별 시간약속에 대한 result보여주기)
  
  post 'home/usersigancreate'
  get 'home/usersiganinput'
  
  get 'home/siganfrom'
  
  get 'home/jungbosujung'
  
  
  
  
  # get 'home/gyosiresult/'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
