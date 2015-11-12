module Bibliografia

    #Nodo de la lista enlazada 
    Nodo = Struct.new(:referencia, :siguiente)

        #Getters + Setters
        attr_accessor :referencia, :siguiente
        
        #Constructor
        def initialize(referencia, siguiente)
           @referencia = referencia
           @siguiente = siguiente
        end
        
        #Método para puts
        def to_s
            @referencia.to_s
        end

end
