require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('', {:type => :feature}) do
  it('') do
    visit('/')
    fill_in('money', :with => '')
    click_button('Enter')
    expect(page).to have_content('')
  end
end
