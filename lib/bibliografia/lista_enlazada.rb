module Bibliografia

    #Nodo de la lista enlazada 
    Nodo = Struct.new(:referencia, :siguiente, :anterior) do

        #Método para puts
        def to_s
            @referencia.to_s
        end
    end
        
    class Lista_enlazada
       
        #Getter + Setter
        attr_reader :principio, :final
       
        #Constructor
        def initialize
            @principio = nil
            @final = nil
        end
        
        #Comprobar la lista
        def es_primero?
            if (@principio == nil)
                return true  #Lista vacía 
            else
                return false #Lista no vacía
            end
        end 
        
        #Insertar nodo en la lista por el principio
        def insertar_lista_principio(referencia)
            nodo = Nodo.new(referencia, nil, nil)
            if (es_primero?)    
                @principio = nodo
                @final = nodo
            else
                nodo.siguiente = @principio
                @principio.anterior = nodo
                @principio = nodo
            end
        end
        
        #Extraer nodo de la lista por el principio
        def extraer_lista_principio
            if (es_primero?)
                return false
            else 
                ref = @principio.referencia
                @principio = @principio.siguiente
                if (!es_primero?)
                    @principio.anterior = nil
                end
            return ref
            end
        end
    end
end