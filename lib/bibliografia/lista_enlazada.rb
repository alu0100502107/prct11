module Bibliografia

    #Nodo de la lista enlazada 
    Nodo = Struct.new(:referencia, :siguiente)

        #Método para puts
        def to_s
            @referencia.to_s
        end

    class Lista_enlazada
        
        #Getters + Setters
        attr_accessor :head, :tail
        
        #Constructor 
        def initialize(head, tail)
            @head = nil
            @tail = nil
        end
        
    end
        
    
end
