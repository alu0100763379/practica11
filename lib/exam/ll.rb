#Clase para representar la Lista

Nodo = Struct.new(:value, :next_node)

class Lista

    attr_accessor :head, :value, :next_node

    def initialize
        @head = nil
    end

    def add(value)
       
        value.next_node = @head
        @head = value
    end

    def remove
        @head = @head.next_node
    end
end
