#espectativas de la practica 5
require 'spec_helper.rb'
require 'exam'

describe Exam do

    before :each do
		@sS = Pregunta.new("Question?")

	end

	describe "# Asignado la pregunta a la variable" do
		
  	    it "Debe existir una pregunta." do
		            expect(@sS.pregunta).to eq("Question?")
	    end
	    
	  
	    it "Guardando preguntas" do
	            
	    @p1 = Pregunta.new("¿Cual es la salida del siguiente codigo Ruby?")
		@p1.addrespuesta("<#Xyz:0xa000208>")
		@p1.addrespuesta("nil")
		@p1.addrespuesta("0")
		@p1.addrespuesta("Ninguna de las anteriores")
		
		@p2 = Pregunta.new("La siguiente definicion de un hash en ruby es valida:\nhash_raro = {\n[1,2,3] => Object.new(),\nHash.new => :toto")
		@p2.addrespuesta("Cierto")
		@p2.addrespuesta("Falso")

		@p3 = Pregunta.new("¿Cual es la salida del siguiente codigo Ruby?")
		@p3.addrespuesta("1")
		@p3.addrespuesta("bob")
		@p3.addrespuesta("HEY!")
		@p3.addrespuesta("Ninguna de las anteriores")

		@p4 = Pregunta.new("¿Cual es el tipo de objeto en el siguiente codigo Ruby?\nclass Objeto\nend")
		@p4.addrespuesta("Una instancia de la clase Class")
		@p4.addrespuesta("Una constante")
		@p4.addrespuesta("Un objeto")
		@p4.addrespuesta("Ninguna de las anteriores")

		@p5 = Pregunta.new("Es apropiado que una clase Tablero herede de una clase Juego")
		@p5.addrespuesta("Cierto")
		@p5.addrespuesta("Falso")

		@n1 = Nodo.new(@p1)
		@n2 = Nodo.new(@p2)
		@n3 = Nodo.new(@p3)
		@n4 = Nodo.new(@p4)
		@n5 = Nodo.new(@p5)

		@lista = Lista.new()
		@lista.add(@n1)
		@lista.add(@n2)
		@lista.add(@n3)
		@lista.add(@n4)
		@lista.add(@n5)
	
	
	#	expect(@n1.value).to eq("La pregunta es: Es apropiado que una clase Tablero herede de una clase Juego")
		expect(@p5.to_s).to eq("La pregunta es: Es apropiado que una clase Tablero herede de una clase Juego\n 1) Cierto\n2) Falso\n")
		expect(@n5.value).to eq(@p5)
	   	expect(@lista.head).should eq(@n5)
	   
	    end

	    
	end
end

describe Exam do
    before :each do
        @lista = Lista.new()
        @n1 = Nodo.new("Nodo 1")
        @n2 = Nodo.new("Nodo 2")
        @n3 = Nodo.new("Nodo 3")
    end
    
    
     it "Se extrae el primer elemento de la lista." do
        @lista.add(@n1)
        @lista.add(@n2)
        @lista.remove
        expect(@lista.head).to eq(@n1)
    end
    
     it "Se puede insertar un elemento." do
        @lista.add(@n1)
        expect(@lista.head).to eq(@n1)
        expect(@n1.value).to eq("Nodo 1")
    end
    
    it "Se pueden insertar varios elementos." do
        @lista.add(@n1)
        @lista.add(@n2)
        @lista.add(@n3)
        expect(@lista.head).to eq(@n3)
        @lista.remove
        expect(@lista.head).to eq(@n2)
        @lista.remove
        expect(@lista.head).to eq(@n1)
    end
    
    it "#Debe existir una Lista con su cabeza" do
    	@lista.add(@n1)
    	expect(@lista.head).to eq(@n1)
    end
    
end
