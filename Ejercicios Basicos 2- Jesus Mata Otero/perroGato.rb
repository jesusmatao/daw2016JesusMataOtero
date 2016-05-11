#Author: Jesus Mata Otero

class Perro
	def initialize(nombre = nil)
		@nombre = nombre
	end
	def set_nombre(nombre)
		@nombre = nombre
	end
	def get_nombre
		return @nombre
	end
	def ladrar
		return "Wow"
	end
	def to_s #sobreescribimos el metodo por defecto to_s
		 "El nombre del perro: \"#{get_nombre}\" y su ladrido es: \"#{ladrar}\"\n"
	end
end
class Gato
	def initialize(nombre = nil)
		@nombre = nombre
	end
	def set_nombre(nombre)
		@nombre = nombre
	end
	def get_nombre
		return @nombre
	end
	def maullar
		return "miau"
	end
	def to_s #sobreescribimos el metodo por defecto to_s
		 "El nombre del gato es : \"#{get_nombre}\" y su maullido es: \"#{maullar}\"\n"
	end
end

mi_gato=Gato.new("Garfiel")
print mi_gato.to_s
puts "Ingrese el nombre del gato:"
mi_gato.set_nombre(gets.chomp)
print mi_gato.to_s
mi_perro=Perro.new("Domencito")
print mi_perro.to_s
puts "Ingrese el nombre del perro:"
mi_perro.set_nombre(gets.chomp)
print mi_perro.to_s