class Articulo < ApplicationRecord

  mount_uploader :imagen_articulo, ImagenArticuloUploader

  belongs_to :usuario
  has_many :comentarios, :dependent => :destroy

  validates :titulo,
            presence:     {message: 'no puede estar en blanco'},
            uniqueness: true

  validates :descripcion,
            presence:     {message: 'no puede estar en blanco'},
            length:       { minimum: 10 }

  validates :imagen_articulo,
            presence:     {message: 'no puede estar en blanco'}

  # Validacion de avatar
  validates_integrity_of  :imagen_articulo
  validates_processing_of :imagen_articulo

  # Funcion para contador de visita de los articulos
  def update_contador_visita
    self.update(contador_visita: self.contador_visita + 1)
  end

  private
  def imagen_articulo_size_validation
    errors[:imagen_articulo] << "Should be less than 500Kb" if imagen_articulo.size > 0.5.megabytes
    #code
  end

end
