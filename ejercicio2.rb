=begin 
* Corregir los errores de sintaxis para que las últimas cuatro líneas se ejecuten de
  manera correcta
  Actividad 019 - POO, Módulos y Mixins.
  Ejercicio 1: Sintaxis
  Ejercicio 2: Sintaxis
* La última instrucción debe imprimir "Hola! Soy la clase MiClase"
=end
class MiClase
	attr_accessor :name
	def initialize(name)
		@name = name
	end
	def saludar
		"Hola! Soy la clase #{@name}"
	end
end
c = MiClase.new('Clase Uno')
puts c.name
puts c.class
c.name = c.class 
puts c.saludar