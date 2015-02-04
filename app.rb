require 'bundler/setup'
Bundler.require(:default)
require 'pry'

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
  @categories = Category.all
  redirect '/'
end

get '/recipes/new' do
  @categories = Category.all
  erb(:new_recipe)
end

get '/recipes/:id' do
  @recipe = Recipe.find(params.fetch('id').to_i)
  @categories = Category.all
  erb(:recipe)
end

post '/recipes/:id' do
  @recipe = Recipe.find(params.fetch('id').to_i)
  @category = Category.find(params.fetch("category"))
  @recipe.categories.push(@category)
  @recipes = Recipe.all
  @categories = Category.all
  erb(:recipe)
end

post '/recipes/:id/edit' do
  @recipe = Recipe.find(params.fetch('id').to_i)
  erb(:edit_recipe)
end

patch '/recipes/:id' do
  name = params.fetch 'recipe'
  instructions = params.fetch 'instructions'
  @recipe = Recipe.find(params.fetch('id').to_i)
  @recipe.update(name: name, instructions: instructions)
  @categories = Category.all
  erb(:recipe)
end

delete '/recipes/:id/delete' do
  @recipe = Recipe.find params.fetch('id')
  @recipe.destroy
  redirect('/')
end

get '/categories/new' do
  erb(:new_category)
end

post '/categories' do
  name = params.fetch 'category'
  @category = Category.create(name: name)
  @recipes = Recipe.all
  redirect('/')
end

get '/measurements' do
  @measurements = Measurement.all
  erb(:measurement)
end

post '/measurements/new' do
  measurement = params.fetch 'measurement'
  @measurement = Measurement.create(name: measurement)
  @measurements = Recipe.all
  redirect '/measurements'
end

get '/ingredients' do
  @ingredients = Ingredient.all
  erb(:ingredient)
end

post '/ingredients/new' do
  ingredient = params.fetch 'ingredient'
  @ingredient = Ingredient.create(name: ingredient)
  @ingredients = Ingredient.all
  redirect '/ingredients'
end