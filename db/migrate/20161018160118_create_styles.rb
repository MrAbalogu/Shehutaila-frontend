class CreateStyles < ActiveRecord::Migration
  def change
    create_table :styles do |t|
      t.string :name
      t.string :stock
      t.text :description
      t.string :color
      t.string :color1
      t.string :color2
      t.string :color3
      t.string :color4
      t.string :tribe
      t.string :location

      t.timestamps null: false
    end
  end
end
