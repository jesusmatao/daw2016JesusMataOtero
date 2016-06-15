class Estado < ActiveRecord::Base
  validates :nombre,presence: {mensaje: 'Es requerido'},length:{minimum: 5,maximum: 50, message: ' longitud entre 5 y 50 caracteres '}
  validates :pais,presence: {mensaje: 'Es requerido'},length:{minimum: 4,maximum: 50, message: ' longitud entre 4 y 50 caracteres '}

end
