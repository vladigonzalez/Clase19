=begin

Se tiene la clase Vehicle que recibe como argumento un modelo y un año. El método
engine_start enciende el vehículo.

Se pide:
Ejercicio 3: Herencia
* Crear una clase Car que herede de Vehicle
* El constructor de Car, además de heredar las propiedades de Vehicle, debe incluir un
  contador de instancias de Car.
* Crear un método de clase en Car que devuelva la cantidad de instancias.
* El método engine_start heredado debe además imprimir 'El motor se ha encendido!'.
  Instanciar 10 Cars.
* Consultar la cantidad de instancias generadas de Car mediante el método de clase
  creado.
=end

class Vehicle
	def initialize(model, year)
	 	@model = model
	 	@year = year
	 	@start = false
	end
	def engine_start
	 	@start = true
	end
end

class Car < Vehicle
	@@Contador = 0
	def initialize
	 	@@Contador += 1
	end	

	def self.getcontador
		@@Contador
	end

	def engine_start
	 	super 
	 	puts "El motor se ha encendido!!"
	end

end

10.times do
	Car.new.engine_start	
end
#Car.new.engine_start
puts "contador de instancias #{Car.getcontador}"