Rails.application.routes.draw do
  get '/', to: 'landings#index'
  get 'user-generator', to: 'usergenerators#index'
  get 'lorem-ipsum', to: 'loremipsums#index'
end
