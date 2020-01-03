require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
  describe 'When I visit the root path "/"' do
    it 'I see a welcome page' do
      visit '/'

      expect(page).to have_content('Ruby On Braille')
    end
  end
end
