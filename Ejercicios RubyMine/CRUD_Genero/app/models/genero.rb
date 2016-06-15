class Genero < ActiveRecord::Base
  validates :nombre,presence: true,length: {minimum: 5}
  validates :descripcion,presence: true
end
