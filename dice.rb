require "sinatra"
get '/' do
  "Hello World"
end

get("/zebra") do
  "we must add a route"
end

