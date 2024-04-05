require "sinatra"
require "sinatra/reloader"
require "better_errors"
require "binding_of_caller"

# Need this configuration for better_errors
use(BetterErrors::Middleware)
BetterErrors.application_root = __dir__
BetterErrors::Middleware.allow_ip!('0.0.0.0/0.0.0.0')

get("/") do
    erb(:dice)
end

get("/dice/2/6") do
  first_die = rand(1..6)
  second_die = rand(1..6)
  sum = first_die + second_die
	
  @outcome = "You rolled a #{first_die} and a #{second_die} for a total of #{sum}."
	
  erb(:two_six, {:layout => :wrapper})

end

get("/dice/2/10") do
  first_die = rand(1..10)
  second_die = rand(1..10)
  sum = first_die + second_die
  @outcome = "you rolled a #{first_die} and a #{second_die} for a total of #{sum} "

  erb(:two_ten, {:layout => :wrapper})
end

get("/dice/1/20") do
  die = rand(1..20)
  @outcome = "you rolled a #{die}"
  erb(:one_twenty, {:layout => :wrapper} )
end

get("/dice/5/4") do
    sum = 0
    i = 0
    dice = []
  
    for i in 0..4 do
      dice[i] = rand(1..4)
      sum = sum + dice[i]
      i = i + 1
    end
  
    @outcome = "Your roll on all the 5 dice #{dice} for a total of #{sum}"
    erb(:five_four, {:layout => :wrapper})
  end
  
