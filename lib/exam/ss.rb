#Clase para representar a las Preguntas de seleccion simple

class Pregunta
    attr_reader :pregunta, :respuesta #Ponemos accesor para no tener problemas
	def initialize(pregunta, respuesta)
		@pregunta = pregunta
		@respuesta = respuesta
	end

	def to_s
		"#{pregunta}\n#{respuesta}"
	end
end
