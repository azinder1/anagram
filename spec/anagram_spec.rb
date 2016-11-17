require('rspec')
require('./lib/anagram')
require('pry')
require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Anagram path', {:type => :feature}) do
  it('processes user input to tell whether there are anagram matches') do
    visit('/')
    fill_in('word1', :with => 'act')
    fill_in('word2', :with => 'cat')
    click_button('Check')
    expect(page).to have_content('cat is an anagram')
  end
end


# describe('String#anagram') do
#   it("Two words are considered anagrams if they contain the same letters but in different order") do
#     expect(("cat").wordsplitter("act")).to(eq("act is an anagram of cat"))
#   end
#   it("can take a number of inputted arguments and return whether they each are anagrams") do
#     expect(("cat").wordsplitter("act bat")).to(eq("act is an anagram of cat"))
#   end
# end
