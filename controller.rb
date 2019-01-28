require("sinatra")
require("sinatra/contrib/all")
require("pry")

require_relative("models/Game")
also_reload("./models/*")

get "/" do
  erb(:about)
end

get "/:choice1/:choice2" do
  game = Game.new(params[:choice1], params[:choice2])
  @result = game.play()
  erb(:result)
end
