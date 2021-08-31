class CreateHats < ActiveRecord::Migration[6.0]
  def change
    create_table :hats do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.string :size
      t.boolean :available
      t.references :rat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
