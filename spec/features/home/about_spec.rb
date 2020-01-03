require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
  describe 'When I visit the about path "/about"' do
    it 'I see an about page' do
      visit '/about'

      expect(page).to have_content('About')
    end
  end
end
