class CreateScreenshots < ActiveRecord::Migration
  def change
    create_table :screenshots do |t|
      t.belongs_to :project, index: true
      t.timestamps null: false
    end
  end
end
