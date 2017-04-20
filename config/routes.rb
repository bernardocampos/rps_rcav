Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("/rock", {:controller => "games", :action => "play_rock"})
  get("/paper", {:controller => "games", :action => "play_paper"})
  get("/scissors", {:controller => "games", :action => "play_scissors"})
  #:controller and :action are "keys" that rails server expects to see
  # what is the best practice for how many controller files to have and actions within them
end
