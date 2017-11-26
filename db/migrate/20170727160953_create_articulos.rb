class CreateArticulos < ActiveRecord::Migration[5.0]
  def change
    create_table :articulos do |t|
      t.string :titulo
      t.text :descripcion
      t.integer :contador_visita, default: 0
      t.integer :usuario_id
      t.references :usuario

      t.timestamps
    end
  end
end
