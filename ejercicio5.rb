=begin
Transformar la clase Herviboro en un módulo. Implementar el módulo en la clase Conejo
mediante Mixin para poder acceder al método dieta desde la instancia. Finalmente
imprimir la definición de Hervíboro.

Pregunta: ¿Por qué es mejor solución la implementación de Mixin que mediante
Herencia de Herencia?
=end

module Herviboro
 	@@definir = 'Sólo me alimento de vegetales!'
 	def self.definir
 		@@definir
 	end
 	def dieta
 		"Soy un Herviboro!"
 	end

end

class Animal
 	def saludar
 		"Soy un animal!"
 	end
end

class Conejo < Animal  
  attr_accessor :name
  include Herviboro
  def initialize(name)
    @name = name
 	end
end

# todo como modulo
#conejo = Herviboro::Conejo.new('Bugs Bunny')

# Solo modulo incluido en la clase
conejo = Conejo.new('Bugs Bunny')
puts conejo.saludar
puts conejo.dieta
puts Herviboro.definir
puts "soy el #{conejo.class} #{conejo.name}"
#puts "soy #{conejo.name}"