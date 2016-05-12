class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.integer :age
      t.integer :phone_number

      t.timestamps null: false
    end
  end
end
