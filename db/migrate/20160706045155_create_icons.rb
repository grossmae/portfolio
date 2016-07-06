class CreateIcons < ActiveRecord::Migration
  def change
    create_table :icons do |t|
      t.string :image_url
      t.belongs_to :project, index: true

      t.timestamps null: false
    end
  end
end
