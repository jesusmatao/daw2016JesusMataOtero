class CreateGeneros < ActiveRecord::Migration
  def change
    create_table :generos do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps null: false
    end
  end
end
