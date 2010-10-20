LoginApp::Application.routes.draw do
  resources :comments, :conversations, :boards, :users, :user_sessions

  match 'login' => 'user_sessions#new', :as => :login
  match 'logout' => 'user_sessions#destroy', :as => :logout
  
  match '/conversations/board/:board_id/' => "conversations#new", :as => :create_post
  match '/conversations/:id/reply' => "conversations#reply", :as => :post_reply

end
