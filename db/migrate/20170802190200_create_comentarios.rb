class CreateComentarios < ActiveRecord::Migration[5.0]
  def change
    create_table :comentarios do |t|
      t.string :comentario
      t.integer :user_id
      t.integer :articulo_id
      t.references :usuario, foreign_key: true
      t.references :articulo, foreign_key: true

      t.timestamps
    end
  end
end
