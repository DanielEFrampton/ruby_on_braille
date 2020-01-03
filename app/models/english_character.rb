class EnglishCharacter < ApplicationRecord
  validates_presence_of :english_chars

  has_many :english_brailles
  has_many :braille_symbols, through: :english_brailles
end
