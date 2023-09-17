require 'sinatra'
require 'byebug'
require 'bootstrap'

require './profile_repository.rb'

get '/' do
  erb :home
end

get '/house' do
  erb :house
end

# TODO Implement the route for /house here and render the correct template.

get '/profiles/:name' do
  @profile = ProfileRepository.find_profile(params[:name])
  if @profile
    erb :profile
  else
    erb :not_found
  end
end
