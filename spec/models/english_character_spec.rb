require 'rails_helper'

RSpec.describe EnglishCharacter, type: :model do
  describe 'validations' do
    it { should validate_presence_of :english_chars }
  end

  describe 'relationships' do
    it { should have_many :english_brailles }
    it { should have_many(:braille_symbols).through(:english_brailles) }
  end
end
