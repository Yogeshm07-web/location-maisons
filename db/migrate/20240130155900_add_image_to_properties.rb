class AddImageToProperties < ActiveRecord::Migration[7.1]
  def change
    add_column :properties, :image, :string
  end
end
