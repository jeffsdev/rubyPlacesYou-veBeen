require('sinatra')
require('sinatra/reloader')
also_reload("lib/**/*.rb")
require("./lib/places")

get('/') do
  @places = Place.all()
  erb(:index)
end

get('/places') do
  location = params.fetch("location")
  place = Place.new(location)
  place.save()
  erb(:success)
end
