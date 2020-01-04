require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
  describe 'When I visit the root path "/"' do
    before(:each) do
      visit '/'
    end

    describe "I can see in the site header" do
      it 'the name of the website' do
        expect(page).to have_content('Ruby On Braille')
      end

      it 'a link to the About page' do
        expect(page).to have_link('About', href: '/about')
      end

      it 'a link to the Home page' do
        expect(page).to have_link('Home', href: '/')
      end

      it 'a link to the Developer webpage' do
        expect(page).to have_link('Developer', href: 'https://danieleframpton.github.io')
      end
    end

    describe 'I can see in the website body' do
      it 'a short explanation of how to use the tool' do
        explanation = "Enter text below and click 'Transform' to generate the matching text in Braille."

        expect(page).to have_content(explanation)
      end

      it 'a text area field' do
        expect(page).to have_field('text')
      end

      it "a submit button titled 'Transform'" do
        expect(page).to have_button 'Transform'
      end
    end

    describe 'and I enter text into the text area and click submit' do
      before(:each) do
        fill_ in 'text', with: 'Hello, World!'

        click_on('Transform')
      end

      it 'I should see the Braille corresponding to my text' do
        unicode_string = ''
        expect(page).to have_content(unicode_string)
      end
    end
  end
end
