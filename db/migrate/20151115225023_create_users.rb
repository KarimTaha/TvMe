class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :f_name
      t.string :l_name
      t.string :city
      t.string :country
      t.date :date_of_birth
      t.integer :gender

      t.timestamps
    end
  end
end
