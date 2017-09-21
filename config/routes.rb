Rails.application.routes.draw do
  
  resources :profiles, :except => [:show]
  
  get 'addresses/index'

  get 'addresses/new'

  get 'addresses/edit'

  get 'addresses/destroy'

  get 'contact_numbers/index'

  get 'contact_numbers/new'

  get 'contact_numbers/edit'

  get 'contact_numbers/destroy'

  

  root to: 'visitors#index'
  
end
