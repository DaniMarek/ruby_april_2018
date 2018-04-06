Rails.application.routes.draw do
# specifies direction of HTTP request to appropriate controller#method 
  # HTTP_VERB "<relative URL>" => "Outputs#method"
# the following are our routes
  get "" => "outputs#index"
  get "hello" => "outputs#hi"
  get "say/hello" => "outputs#sayhi"
  get "say/hello/joe" => "outputs#hijoe"
  get "say/hello/michelle" => "outputs#himichelle"
  get "times" => "outputs#count"
  get "times/restart" => "outputs#reset"
# this line will create routes from the lines above
  resource :outputs
end
