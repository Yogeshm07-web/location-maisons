class CreateProperties < ActiveRecord::Migration[7.1]
  def change
    create_table :properties do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :max_people
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
