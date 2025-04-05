require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square)
end

get("/square/new") do
  erb(:square)
end

get("/square/results") do
  @number = params.fetch("number").to_f

  @square = @number ** 2

  erb(:sq_results)
end

get("/square_root/new") do
  
  erb(:square_root)
end

get("/square_root/results") do
  @number = params.fetch("number").to_f

  @square_root = @number ** 0.5

  erb(:sq_root_res)
end

get("/random/new") do
  erb(:rand)
end

get("/random/results") do
  @min_num = params.fetch("user_min").to_f

  @max_num = params.fetch("user_max").to_f

  @rand_num = rand(@min_num..@max_num)
  
  erb(:rand_res)
end

get("/payment/new") do
  erb(:payment)
end

get("/payment/results") do
  @apr = params.fetch("user_apr").to_f
  
  @num_years = params.fetch("user_years").to_i

  @principal = params.fetch("user_pv").to_f

  r = @apr / 100 / 12

  n = @num_years * 12

  numerator = r * @principal

  denominator = 1 - 1/((1+r)**n)

  @payment = numerator/denominator

  erb(:payment_res)
end
