Rails.application.routes.draw do
  
  root 'mainstats#index'
  get '/current', to: 'mainstats#currenttop'

end
