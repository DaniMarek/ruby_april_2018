Rails.application.routes.draw do
 root "outputs#main"
 get "results" => "outputs#results"
 post "survey" => "outputs#survey"

 resource :outputs
end
