class AddCloudinaryImageUrlToProperties < ActiveRecord::Migration[7.1]
  def change
    add_column :properties, :cloudinary_image_url, :string
  end
end
