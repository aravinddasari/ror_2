Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :employee do 
    get :show_all, :on => :collection
    get :details, :on => :collection
    get :show_team_leads, :on => :collection
    get :team_details, :on => :collection
  end
end
