#espectativas de la practica 5
require 'spec_helper.rb'
require 'exam'

describe Exam do

    before :each do
		@sS = Pregunta.new("Que seleccion es la ganadora del mundial de futbol de 2014?",["Italia","Francia","Alemania","Argentina"])
	end

	describe "# Asignado la pregunta a la variable" do
		
  	    it "Pregunta guardada." do
			@sS.pregunta.should eq("Que seleccion es la ganadora del mundial de futbol de 2014?")
	    end
		it "Respuestas guardadas" do
			@sS.respuesta.should eq("a) Italia\nb) Francia\nc) Alemania\nd) Argentina\n")
		end
		it "Todo guardado" do
			@sS.to_s.should eq("Que seleccion es la ganadora del mundial de futbol de 2014?\na) Italia\nb) Francia\nc) Alemania\nd) Argentina\n")
		end
	end
end

describe Exam do
    before :each do
        @lista = Lista.new()
        @n1 = Nodo.new("Nodo 1")
        @n2 = Nodo.new("Nodo 2")
    end
    
     it 'Se extrae el primer elemento de la lista.' do
        @lista.add(@n1)
        @lista.add(@n2)
        @lista.remove
        expect(@lista.head).to eq(@n1)
    end
    
    it 'Se puede insertar un elemento.' do
        @lista.add(@n1)
        expect(@lista.head).to eq(@n1)
    end
    
    it 'Se pueden insertar varios elementos.' do
        @lista.add(@n1)
        @lista.add(@n2)
        expect(@lista.head).to eq(@n2)
        @lista.remove
        expect(@lista.head).to eq(@n1)
    end
    
end
