class BrailleSymbol < ApplicationRecord
  validates_presence_of :unicode, :name

  has_many :english_brailles
  has_many :english_characters, through: :english_brailles
end
