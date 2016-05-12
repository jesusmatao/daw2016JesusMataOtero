#Author: Jesus Mata Otero

class Tesoro
	def initialize(nombre = nil,descripcion= nil)
		@nombre = nombre
		@descripcion = descripcion
	end
	def set_nombre(nombre)
		@nombre = nombre
	end
	def get_nombre
		return @nombre
	end
	def set_descripcion(descripcion)
		@descripcion = descripcion
	end
	def get_descripcion
		return @descripcion
	end
	def to_s #sobreescribimos el metodo por defecto to_s
		 "El nombre del tesoro: \"#{get_nombre}\" y la descripcion del mismo es \"#{get_descripcion}\"\n"
	end
end

mi_tesoro = Tesoro.new(" Esta perdido en el ociano pacifico")
print mi_tesoro.to_s
mi_tesoro.set_nombre("Kiko")
mi_tesoro.set_descripcion("Es un nino cacheton")
print mi_tesoro.to_s

tu_tesoro = Tesoro.new("Esperanza Gomez","Es la mejor de las mejores")
puts tu_tesoro.to_s 
#Metodo Inspect: Permite mostrar lo que hay en el objeto
puts "Inspeccionando el tesoro #{mi_tesoro.inspect}"