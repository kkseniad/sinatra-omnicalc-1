require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

get("/square/new") do
  erb(:square)
end

get("/square/results") do
  @number = params.fetch("number").to_i

  @square = @number ** 2

  erb(:sq_results)
end

get("/square_root/new") do
  
  erb(:square_root)
end

get("/square_root/results") do
  @number = params.fetch("number").to_i

  @square_root = @number ** 0.5

  erb(:sq_root_res)
end

get("/random/new") do
  erb(:rand)
end

get("/random/results") do
  @min_num = params.fetch("user_min").to_i

  @max_num = params.fetch("user_max").to_i

  @rand_num = rand(@min_num..@max_num)
  
  erb(:rand_res)
end

get("/payment/new") do
  erb(:payment)
end
