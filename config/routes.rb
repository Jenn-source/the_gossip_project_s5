Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/team', to: 'contact#team' #page de la team
  get '/contact', to: 'contact#contact' #page pour le contact
  get 'welcome/:first_name', to: 'welcome#user' #si le nom est renseigné
  get 'welcome', to: 'welcome#user' #si le nom n'est pas renseigné
  root to: 'gossip_page#index' #page d'accueil
  get 'gossip/:id', to: 'gossip_page#show' #page du gossip
  get 'author/:id', to: 'gossip_page#author' #page de l'auteur
end
