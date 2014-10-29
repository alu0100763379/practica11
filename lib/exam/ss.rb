#Clase para representar a las Preguntas de seleccion simple

class Pregunta
    attr_reader :pregunta, :respuesta #Ponemos accesor para no tener problemas
	def initialize(pregunta, respuesta)
		@pregunta = pregunta
		@respuesta = respuesta
	end

	def respuesta 
		"a) #{@respuesta[0]}\nb) #{@respuesta[1]}\nc) #{@respuesta[2]}\nd) #{@respuesta[3]}\n"
	end
	
	def to_s
		"#{pregunta}\n#{respuesta}"
	end
end
