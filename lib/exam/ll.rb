#Clase para representar la Lista

Nodo = Struct.new(:value, :next_node, :prev_node)

class Lista
    attr_accessor :head, :value, :next_node, :tail, :prev_node

    def initialize
        @head = nil
        @tail = nil
    end
    
    def add_0(nodo)
        nodo.next_node = @head
        nodo.prev_node = @tail
        @head = nodo
        @tail = nodo
        
    end

    def add(nodo)
        nodo.next_node = @head
        @head.prev_node = nodo
        @head = nodo
        
    end

    def walk
        @head = @head.next_node
    end
    
    def moonwalk
        @tail = @tail.prev_node
    end
    
    def add_d(nodo)
        nodo.prev_node = @tail
        @tail.next_node = nodo
        @tail = nodo
    end
    
    def each
        i = @head
        while i != nil do
            yield i
            i = i.walk
        end
    end
end
