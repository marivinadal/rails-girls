class CreateColorPalettes < ActiveRecord::Migration[5.1]
  def change
    create_table :color_palettes do |t|
      t.string :name
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
