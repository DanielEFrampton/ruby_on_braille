class CreateBrailleSymbols < ActiveRecord::Migration[5.1]
  def change
    create_table :braille_symbols do |t|
      t.string :unicode
      t.string :name
    end
  end
end
