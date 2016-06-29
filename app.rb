require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/scrabble')
require('pry')

get('/') do
  erb(:form)
end

get('/score') do
  @word = params.fetch('word').scrabble()
  # @score = params.fetch('score').scrabble()
  erb(:score)
end
