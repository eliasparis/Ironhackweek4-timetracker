Rails.application.routes.draw do
  
    get '/' => 'site#home'
    get '/contact' => 'site#contact'
    # get '/projects' => 'projects#index'
    # get '/projects/new' => 'projects#new'
    # post '/projects' => 'projects#create'
    # get '/projects/:project_id/entries/new' => 'entries#new'
    # get '/projects/:id' => 'projects#show'
    # get '/projects/:project_id/entries' => 'entries#index'

    resources :projects do 
    	resources :entries
    end

    resources :people

end
