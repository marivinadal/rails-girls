Rails.application.routes.draw do
  get 'pages/info'

  root :to => redirect('/color_palettes')
  get    '/color_palettes'           => 'color_palettes#index'

  get    '/color_palettes/new'       => 'color_palettes#new', as: 'new_color_palette'
  get    '/color_palettes/:id/edit'  => 'color_palettes#edit', as: 'edit_color_palette'
  get    '/color_palettes/:id'       => 'color_palettes#show', as: 'color_palette'

  post   '/color_palettes'           => 'color_palettes#create'
  patch  '/color_palettes/:id'       => 'color_palettes#update'
  put    '/color_palettes/:id'       => 'color_palettes#update'

  delete '/color_palettes/:id'       => 'color_palettes#destroy'

  get    '/ideas'           => 'ideas#index'

  get    '/ideas/new'       => 'ideas#new', as: 'new_idea'
  get    '/ideas/:id/edit'  => 'ideas#edit', as: 'edit_idea'
  get    '/ideas/:id'       => 'ideas#show', as: 'idea'

  post   '/ideas'           => 'ideas#create'
  patch  '/ideas/:id'       => 'ideas#update'
  put    '/ideas/:id'       => 'ideas#update'

  delete '/ideas/:id'       => 'ideas#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
