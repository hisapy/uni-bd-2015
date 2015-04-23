Rails.application.routes.draw do
  resources :users
  
  scope "/:username" do
    get '/' => 'users#show', as: :profile    
  end
end
