require "sinatra"
require "sinatra/reloader"

get("/") do
  "Hello World"
end


get("/zebra") do
  "we must add a route"
end

get("/giraffe") do
  "Hopefully this shows up without having to restart the server 🤞🏾"
end
