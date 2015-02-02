require 'bundler/setup'
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get '/' do
  @recipes = Recipe.all
  erb(:index)
end

post '/recipes' do
  name = params.fetch 'recipe'
  @recipe = Recipe.create(name: name)
  @recipes = Recipe.all
  redirect '/'
end