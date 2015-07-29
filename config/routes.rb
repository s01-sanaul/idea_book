Rails.application.routes.draw do
  #READ
  get "/idea/:id" => "ideas#show"
  get "/ideas" => "ideas#index"
  #EDIT
  get "/idea/:id/edit" => "ideas#edit"
  get "/edit_idea/:id" => "ideas#edit_idea"
  #CREATE
  get "/new" => "ideas#new"
  get "/create_idea" => "ideas#create"
  #DESTROY
  get "/idea/:id/destroy" => "ideas#destroy"
  
  get "/error" => "ideas#error"
end
