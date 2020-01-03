class EnglishBraille < ApplicationRecord
  belongs_to :braille_symbol
  belongs_to :english_character
end
