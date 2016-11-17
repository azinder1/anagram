require('rspec')
require('sinatra')
require('sinatra/reloader')
require('./lib/anagram')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_input') do
  @word1 = params.fetch('word1')
  @word2 = params.fetch('word2')
  @result = params.fetch('word1').wordsplitter(params.fetch('word2'))
  erb(:anagram_output)
end
