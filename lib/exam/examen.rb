class Examen
	attr_accessor :preguntas, :correctas
	
	def initialize (lista, solucion)
		@preguntas = lista
		@correctas = solucion
	end
	
	def to_s
        aux = @preguntas.head
        respuesta = ""
        respuesta += aux.value.to_s
        respuesta += "\n"
        while (aux != @preguntas.tail) do
            aux = aux.next_node
            respuesta += aux.value.to_s
            respuesta += "\n"
        end
        return respuesta
	end
	
	def inverso
        respuesta = ""
        @preguntas.reverse_each{|x,y| respuesta += "#{x.pre.to_s}\n"}
        return respuesta
    end

end