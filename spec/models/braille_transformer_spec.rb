require 'rails_helper'

RSpec.describe BrailleTransformer, type: :model do
  describe 'instance methods' do
    describe 'to_braille' do
      it 'can take an english string and return same string in grade 1 braille' do
        string = "Hello, World!"
        transformer = BrailleTransformer.new(string)
        expected = "⠠⠓⠑⠇⠇⠕⠠⠀⠠⠺⠕⠗⠇⠙⠮"
        expect(transformer.grade_1_braille).to eq(expected)
      end
    end
  end
end
