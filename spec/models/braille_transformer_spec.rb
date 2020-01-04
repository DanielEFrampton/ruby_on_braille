require 'rails_helper'

RSpec.describe BrailleTransformer, type: :model do
  describe 'instance methods' do
    it 'can take an english string and return same string in grade 1 braille' do
      string = "Hello, World!"
      transformer = BrailleTransformer.new(string)
      expect(transformer.to_braille).to eq('Hello, World!')
    end
  end
end
