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
        def es_lista_vacia?
            if @principio == nil && @final == nil
                return true  #Lista vacía 
            else
                return false #Lista no vacía
            end
        end 
        
        #Insertar nodo en la lista por el principio
        def insertar_lista_principio(referencia)
            if @principio != nil && @principio.siguiente != nil
                n = @principio
                @principio = Nodo.new(referencia, n, nil)
                n.anterior = @principio
            elsif @principio != nil
                n = @principio
                @principio = Nod.new(referencia, n, nil)
                n.anterior = @principio
                @final = n
            else
                @principio = Nodo.new(referencia, nil, nil)
                @final = @principio
            end
        end
        
        #Extraer nodo de la lista por el principio
        def extraer_lista_principio
            if (es_lista_vacia?)
                return nil
            else 
                ref = @principio.referencia
                @principio = @principio.siguiente
                @principio.anterior = nil
                if (principio.siguiente == nil)
                    @final = @principio
                end
                ref
            end
        end
        
        #Insertar nodo en la lista por el final
        def insertar_lista_final(referencia)
            if @tail != nil
                @final = Nodo.new(referencia, nil, @final)
                n = @final.anterior
                n.siguiente = @final
            else
                @principio = Nodo.new(referencia, nil, nil)
                @final = @principio
            end
        end
        
        #Extraer nodo de la lista por el final
        def extraer_lista_final
            if (es_lista_vacia?)
                return nil
            else 
                ref = @final.referencia
                @final = @final.anterior
                if (es_primero?)
                    @principio = nil
                else 
                    @final.siguiente = nil
                end
                ref
            end
            
        end
    end
end