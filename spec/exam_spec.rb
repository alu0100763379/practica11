#espectativas de la practica 5
require 'spec_helper.rb'
require 'exam'

describe Exam do
	 describe 'Exam Practica9' do
        before :all do
            
            
            
            @p1 = RespuestaSS.new("Cuanto es 7*3?", 3)
            @p1.addrespuesta("16")
            @p1.addrespuesta("21")
            @p1.addrespuesta("33")
            @p1.addrespuesta("15")
         
            
            @p2 = RespuestaV.new("¿La siguiente definicion de un hash en ruby es valida?:\nhash_raro = {\n[1,2,3] => Object.new(),\nHash.new => :toto", 2)
           # 
            
            @p3 = RespuestaSS.new("Cual es la salida del siguiente codigo Ruby? puts 'bob'", 4)
            @p3.addrespuesta("1")
            @p3.addrespuesta("bob")
            @p3.addrespuesta("HEY")
            @p3.addrespuesta("Ninguna de las anteriores")
            #
            
            @p4 = RespuestaSS.new("Cual es el tipo de objeto en el siguiente codigo Ruby?\nclass Objeto\nend", 9)
            @p4.addrespuesta("Una instancia de la clase Class")
            @p4.addrespuesta("Una constante")
            @p4.addrespuesta("Un objeto")
            @p4.addrespuesta("Ninguna de las anteriores")
            #
            
            @p5 = RespuestaV.new("Es apropiado que una clase Tablero herede de una clase Juego", 1)
            
            
            @n1 = Nodo.new(@p1)
            @n2 = Nodo.new(@p2)
            @n3 = Nodo.new(@p3)
            @n4 = Nodo.new(@p4)
            @n5 = Nodo.new(@p5)
            
            
            @s1 = Nodo.new(2)
            @s2 = Nodo.new('F')
            @s3 = Nodo.new(1)
            @s4 = Nodo.new(3)
            @s5 = Nodo.new('V')
            
            
            @lista = Lista.new()
            @lista.add_0(@n1)
            @lista.add(@n2)
            @lista.add(@n3)
            @lista.add(@n4)
            @lista.add(@n5)
            
            
            @solucion = Lista.new()
            @solucion.add_0(@s1)
            @solucion.add(@s2)
            @solucion.add(@s3)
            @solucion.add(@s4)
            @solucion.add(@s5)
            
            @eleccion = Lista.new()
            @eleccion.add_0(Nodo.new(2))
            @eleccion.add(Nodo.new('F'))
            @eleccion.add(Nodo.new(1))
            @eleccion.add(Nodo.new(3))
            @eleccion.add(Nodo.new('V'))
        end
            
            
            it "Practica 9 y 10" do
            #clase examen:
            @e=Examen.new(@lista, @solucion)
            #expect(@e.respond_to?(@lista)).to be(true)
            expect(@e.is_a?(Examen)).to be(true)
            end
            
            it "Interfaz funciona" do
            
            @e=Examen.new(@lista, @solucion)
            @i=Interfaz.new(@e, @eleccion)
            expect(@e.correctas.head.value).to eq(@eleccion.head.value)
            expect(@i.nota).to eq(10)
            
            
            end
            
            
              
            
        
    end

end

