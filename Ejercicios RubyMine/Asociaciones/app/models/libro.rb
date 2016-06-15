class Libro < ActiveRecord::Base
  has_many :prestamos
  validates :titulo, :autor, :descripcion, :anio, :presence => true
  validates :anio, :numericality => true
end
