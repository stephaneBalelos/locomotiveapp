Rails.application.routes.draw do

  # Locomotive Back-office
  mount Locomotive::Engine => '/apps', as: 'locomotive' # you can change the value of the path, by default set to "/locomotive"

  # Locomotive API
  mount Locomotive::API.to_app => '/apps(/:site_handle)/api'

  # Render site
  mount Locomotive::Steam.to_app => '/', anchor: false  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
