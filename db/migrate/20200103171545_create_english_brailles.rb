class CreateEnglishBrailles < ActiveRecord::Migration[5.1]
  def change
    create_table :english_brailles do |t|
      t.references :braille_symbol, foreign_key: true
      t.references :english_character, foreign_key: true
    end
  end
end
