class AddImagenArticuloToArticulos < ActiveRecord::Migration[5.0]
  def change
    add_column :articulos, :imagen_articulo, :string
  end
end
