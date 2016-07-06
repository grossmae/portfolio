class AddImageUrlToScreenshots < ActiveRecord::Migration
  def change
    add_column :screenshots, :image_url, :string
  end
end
