require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/tamagotchi")

get("/") do
  erb(:index)
end

post("/pet") do
  @name = params.fetch("name")
  my_pet = Tamagotchi.new(@name)
  # my_pet.save()
  erb(:pet)
end
