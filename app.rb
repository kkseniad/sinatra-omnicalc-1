require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

get("/square/new") do
  
  erb(:square)
end

get("/square_root/new") do
  
  erb(:square_root)
end

get("/random/new") do
  erb(:rand)
end

get("/payment/new") do
  erb(:payment)
end
