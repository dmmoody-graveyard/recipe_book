require 'bundler/setup'
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get '/' do
  @recipes = Recipe.all
  erb(:index)
end

post '/recipes' do
  name = params.fetch 'recipe'
  instructions = params.fetch 'instructions'
  @recipe = Recipe.create(name: name, instructions: instructions)
  @recipes = Recipe.all
  redirect '/'
end

get '/recipes/new' do
  erb(:new_recipe)
end

get '/recipes/:id' do
  @recipe = Recipe.find(params.fetch('id'))
  erb(:recipe)
end