class Usuario < ApplicationRecord

  has_many :articulos
  has_many :comentarios

  mount_uploader :avatar, AvatarUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Validacion de avatar
  validates_integrity_of  :avatar
  validates_processing_of :avatar

  private
  def avatar_size_validation
    errors[:avatar] << "Should be less than 500Kb" if avatar.size > 0.5.megabytes
    #code
  end
end
