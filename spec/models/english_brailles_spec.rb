require 'rails_helper'

RSpec.describe EnglishBraille, type: :model do
  describe 'validations' do
  end

  describe 'relationships' do
    it { should belong_to :braille_symbol }
    it { should belong_to :english_character }
  end
end
