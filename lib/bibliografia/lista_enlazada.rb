module Bibliografia

    #Nodo de la lista enlazada 
    Nodo = Struct.new(:referencia, :siguiente) do

        #Método para puts
        def to_s
            @referencia.to_s
        end
    end
        
    class Lista_enlazada
       
        #Getter + Setter
        attr_accessor :principio
       
        #Constructor
        def initialize
            @principio = nil
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
        def insertar_lista(item)
            nodo = Nodo.new(item,nil)
            if (es_primero?)    
                @principio = nodo
            else
                nodo.siguiente = @principio
                @principio = nodo
            end
        end
        
        #Extraer nodo de la lista por el principio
        def extraer_lista
            ref = @principio.referencia
            @principio = @principio.siguiente
            return ref
        end
    end
end