#Clase para representar a las Preguntas de seleccion simple

class Pregunta
	include Comparable
    attr_reader :pregunta, :respuesta, :level 
	def initialize(pregunta, level)
		@level = level
		@pregunta = pregunta
		@respuesta = Array.new(0)
	end

	
	def pre
			"La pregunta es: #{@pregunta}" 
	end
	
	

	def to_s
		"#{pre}\n#{respuesta}"
		#pre + "\n\n" + respuesta
	end
	
	def <=>(other)
		
		@level <=> other.level
				
	end
	
	def ==(other)
		
		@pregunta.length == other.pregunta.length
			
	end
	
end



class RespuestaV < Pregunta
	
	def respuesta
		" 1) Cierto\n2) Falso\n"
	end
	
end



class RespuestaSS < Pregunta
	
	def respuesta 
		resp = " "
		for i in (0..(@respuesta.length) -1)
			resp += "#{i+1}) #{@respuesta[i]}\n"
		end
		resp
	end
	
	def addrespuesta (respuesta)
			@respuesta.push(respuesta)
	end
	
		
end