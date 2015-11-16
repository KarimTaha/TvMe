class CreateWalls < ActiveRecord::Migration
  def change
    create_table :walls do |t|

      t.timestamps
    end
  end
end
