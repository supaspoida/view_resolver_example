ViewResolverExample::Application.routes.draw do
  match '/ui(/:action)', controller: 'ui'
  root to: 'feed#index'
end
