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

describe('the tamagotchi path', {:type => :feature}) do
  it('increases food level by 1 when the user clicks feed button') do
    visit('/')
    fill_in('name', :with => 'lil dragon')
    click_button('Create!')
    expect(page).to have_content('Food: 10')
  end
end
