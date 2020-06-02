Rails.application.routes.draw do
  
get "/mobs", to: "home#mobsindex"

get "/monst", to: "home#monstindex"

get "/monstrandom", to: "" 
end
