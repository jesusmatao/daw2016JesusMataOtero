#Author: Jesus Mata Otero
class Cosa
	attr_reader :descripcion
	attr_writer :descripcion
	
	def initialize(descripcion)
		@descripcion=descripcion
	end
end

tu_cosa = Cosa.new("Esta bien")
p(tu_cosa)
tu_cosa.descripcion="Mas o menos"
puts "Descripcion: #{tu_cosa.descripcion}"
tu_cosa.descripcion << ", pero todavia pasa" #Concatenacion de cadenas
puts "Descripcion: #{tu_cosa.descripcion}"
p(tu_cosa)
