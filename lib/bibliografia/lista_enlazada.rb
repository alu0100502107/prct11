module Bibliografia

    #Nodo de la lista enlazada 
    Nodo = Struct.new(:referencia, :siguiente)

        #Método para puts
        def to_s
            @referencia.to_s
        end
        
    class Lista_enlazada
       
        #Getters + Setters
        attr_accessor :principio
       
        #Constructor
        def initialize
            @principio = nil
        end
        
        #Comprobar la lista
        def comprobar_lista
            if (@principio == nil)
                return true  #Lista vacía 
            else
                return false #Lista no vacía
            end
        end 
        
        #Insertar nodo en la lista
        def insertar_lista(nodo)
            if (comprobar_lista == true)    
                @principio = nodo
            else
                nodo.siguiente = @principio
                @principio = nodo
            end
        end
        
        #Extraer primer nodo de la lista
        # def extraer_primero
        #     ref = @principio.referencia
        #     @principio = @principio.siguiente
        #     return ref
        # end
    end
end