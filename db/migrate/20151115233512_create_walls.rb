class CreateWalls < ActiveRecord::Migration
  def change
    create_table :walls do |t|
      t.references :user, index: true
      t.timestamps
    end
  end
end
