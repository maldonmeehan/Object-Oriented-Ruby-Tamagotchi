require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/tamagotchi")

get("/") do
  erb(:index)
end

post("/pet") do
  @name = params.fetch("name")
  @my_pet = Tamagotchi.new(@name)
  @food_score = @my_pet.food_level()
  @sleep_score = @my_pet.sleep_level()
  @activity_score = @my_pet.activity_level()
  # my_pet.save()
  erb(:pet)
end
