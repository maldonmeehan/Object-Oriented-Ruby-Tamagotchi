require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the tamagotchi path', {:type => :feature}) do
  it('collects a name from the user and saves it') do
    visit('/')
    fill_in('name', :with => 'lil dragon')
    click_button('Create!')
    expect(page).to have_content('Hello lil dragon!')
  end
end
