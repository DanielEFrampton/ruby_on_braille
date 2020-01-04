class AddPositionToEnglishBrailles < ActiveRecord::Migration[5.1]
  def change
    add_column :english_brailles, :position, :integer, default: 0
  end
end
