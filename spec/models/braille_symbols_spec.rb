require 'rails_helper'

RSpec.describe BrailleSymbol, type: :model do
  describe 'validations' do
    it { should validate_presence_of :unicode }
    it { should validate_presence_of :name }
  end

  describe 'relationships' do
    it { should have_many :english_brailles }
    it { should have_many(:english_characters).through(:english_brailles) }
  end
end
