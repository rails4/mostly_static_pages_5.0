require 'rails_helper'

# uses Capybara DSL -- visit/page

RSpec.describe "Static Pages", type: :request do
  it 'home page displays the string StaticPages#home' do
    visit '/'
    expect(page).to have_content('StaticPages#home')
    # expect(page).to have_selector('h1', text: 'StaticPages#home')
  end

  it 'help page displays the h1 element with text StaticPages#help' do
    visit '/help'
    expect(page).to have_selector('h1', text: 'StaticPages#help')
  end
end
