#Clase para representar la Lista

Nodo = Struct.new(:value, :next_node)

class Lista

    attr_accessor :head, :value, :next_node

    def initialize
        @head = nil
    end

    def add(value)
        #adds a new node to the list, amakes it the new head and links it to the former head
        value.next_node = @head
        @head = value
    end

    def remove
        @head = @head.next_node
    end
end
