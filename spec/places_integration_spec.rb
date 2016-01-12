require('Capybara/rspec')
require('./app')
require('launchy')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the places you've been path", {:type => :feature}) do
  it('') do
    visit('/')
    fill_in "location", :with => "Portland, OR"
    click_button("Enter")
    expect(page).to have_content("The location has been successfully added!")
  end
end
