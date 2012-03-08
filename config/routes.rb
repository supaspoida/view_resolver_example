ViewResolverExample::Application.routes.draw do
  match '/ui(/:action)', controller: 'ui'
  namespace :admin do
    get '/:role', to: 'feed#index'
    root to: 'feed#index'
  end
  root to: 'feed#index'
end
