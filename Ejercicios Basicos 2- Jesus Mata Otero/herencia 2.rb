#Author: Jesus Mata Otero
class Vehiculo
	def initialize(dueno = nil,puertas=nil,ruedas=nil)
		@dueno=dueno
		@puertas=puertas
		@ruedas=ruedas
	end
	def caracteristicas
		return "Las caracteristicas del vehiculo son.."
	end

	attr_reader :dueno
	attr_writer :dueno
	attr_reader :puerta
	attr_writer :puerta
	attr_reader :ruedas
	attr_writer :ruedas
	
end

class Automovil < Vehiculo
	def initialize(descapotable=nil,dueno=nil,puertas=nil,ruedas=nil)
		super(dueno,puertas,ruedas)
		@descapotable=descapotable
	end
	
	attr_reader :descapotable
	attr_writer :descapotable
	
	def subir
		puts "Subiendo al automovil"
	end
	def bajar
		puts "Bajando del automovil"
	end
end
class Camioneta < Vehiculo
	def initialize(tara=nil,dueno=nil,puertas=nil,ruedas=nil,carga=0)
		super(dueno,puertas,ruedas)
		@tara=tara
		@carga=carga
	end
	attr_reader :tara
	attr_writer :tara
	attr_reader :carga
	attr_writer :carga
	
	def cargar(kilos)
		@carga+=kilos
	end
end

mi_auto = Automovil.new(true,"Jesus Mata Otero",4,4)
p(mi_auto)
mi_camioneta=Camioneta.new(1000,"Eric Domenzain Morales Flores",2,4,0)
mi_camioneta.cargar(200)
puts "La camioneta tiene de carga : #{mi_camioneta.carga} kilos"
mi_camioneta.cargar(500)
puts "La camioneta tiene de carga : #{mi_camioneta.carga} kilos"
p(mi_camioneta)
mi_camioneta.tara=3000
puts "La tara de mi camioneta es #{mi_camioneta.tara}"