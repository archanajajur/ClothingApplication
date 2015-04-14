ClothingApp::Application.routes.draw do
  get "admin/index" => "admin#index",:as => :main_view
  get "dashboards/new" => "dashboards#new",:as => :dashboard_view
  match "admin/disabled"=>"admin#disabled",:as=>:disabled
  match "admin/edit_account/:id"=>"admin#edit_account",:as => :edit_user_account
  match "admin/update_account" => "admin#update_account",:as => :update_account
  get "home/index"=>'home#index',:as=> :home_index
  match '/profile' => "profile#view",:as => :profile
  devise_for :users, :controllers => {:registrations => "users/registrations",
                                      :confirmations => 'users/confirmations'}
  root :to => 'home#index'
  resources :sizes
  resources :category_products
  resources :product_saved
  resources :designer_liked
 get "admin/users"=>"admin#user_details"
 match "admin/user_pro"=>"admin#user_pro"
 match "admin/select_manag"=>"admin#select_manag"
  post  "categories/create_cate"=>"categories#create_cate"
  get "categories/new"=>'categories#new'
  get "/categories"=>'categories#index'
  get "/categories/show"=>'categories#show'
  get "/categories/edit"=>'categories#edit'
  match "/categories/delete"=>'categories#destroy'
  match "/categories/update"=>'categories#update'
 
  match "/designers"=>"designers#index"
  match "/designers/create"=>"designers#create"
  match "/designers/new"=>"designers#new"
  get "/designers/show"=>"designers#show"
  get "/designers/edit"=>"designers#edit"
  match "/designers/update"=>"designers#update"
  get "/designers/delete"=>"designers#destroy"

  match "/products"=>"products#index",:as=>:product_index
  post "/product/create"=>"products#create",:as=>:product_create
  match "/product/new"=>"products#new",:as=>:product_new
  get "/product/show"=>"products#show",:as=>:product_show
  get "/product/edit"=>"products#edit",:as=>:product_edit
  match "/product/update"=>"products#update",:as=>:product_update
  get "/product/delete"=>"products#destroy",:as=>:product_delete


  get "/frontend/home"=>"frontend#home"
  get "/frontend/category_main"=>"frontend#category_main"
  get "/frontend/category_individual"=>"frontend#category_individual"
  get "/frontend/designer_main"=>"frontend#designer_main"
  get "/frontend/designer_individual"=>"frontend#designer_individual"
  get "/frontend/product_main"=>"frontend#product_main"
  match "/frontend/product_individual"=>"frontend#product_individual"
 match "/frontend/featured_subcate/:id"=>"frontend#featured_subcate" ,:as=>:frontend_featured_subcate
match "/frontend/designer_liked/:id"=>"frontend#designer_liked" ,:as=>:frontend_designer_liked
  match "/frontend/delete"=>"frontend#destroy",:as=>:frontend_delete
match "/get_prices"=>"frontend#price"
match "/data_saved"=>"frontend#res_back"

end


