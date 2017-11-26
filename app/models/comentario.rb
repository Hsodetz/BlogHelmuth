class Comentario < ApplicationRecord
  belongs_to :usuario
  belongs_to :articulo

  validates :comentario,
            presence:   {message: "no puede estar en blanco"}

end
