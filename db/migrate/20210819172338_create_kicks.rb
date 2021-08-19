class CreateKicks < ActiveRecord::Migration[6.1]
  def change
    create_table :kicks do |t|
      t.string :brand
      t.string :name
      t.string :style
      t.integer :quantity

      t.timestamps
    end
  end
end
