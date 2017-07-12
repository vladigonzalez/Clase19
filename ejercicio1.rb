# Corregir los errores para poder ejecutar ambos métodos.

class MiClase
 	def de_instancia
 		puts 'Metodo de instancia!'
 	end
 	def self.de_clase
 		puts 'Método de clase!'
 	end
end

#Metodo A
c = MiClase.new.de_instancia
a = MiClase.new
a.de_instancia

#Metodo B  OK
MiClase.new.de_instancia
MiClase.de_clase