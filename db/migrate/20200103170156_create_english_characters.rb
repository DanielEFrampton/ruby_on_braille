class CreateEnglishCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :english_characters do |t|
      t.string :english_chars
    end
  end
end
