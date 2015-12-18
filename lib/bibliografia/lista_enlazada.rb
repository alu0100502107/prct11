module Bibliografia

    #Nodo de la lista enlazada 
    Nodo = Struct.new(:referencia, :siguiente, :anterior) do

        #Método para puts
        def to_s
            @referencia.to_s
        end
    end
    
    # Clase Lista enlazada por ambos lados    
    class Lista_enlazada
        include Enumerable
       
        #Getter + Setter
        attr_reader :principio, :final
       
        #Constructor
        def initialize
            @principio = nil
            @final = nil
        end

        #Insertar nodo en la lista por el principio
        def insertar_lista_principio(referencia)
            if @principio != nil && @principio.siguiente != nil
                n = @principio
                @principio = Nodo.new(referencia, n, nil)
                n.anterior = @principio
            elsif @principio != nil
                n = @principio
                @principio = Nodo.new(referencia, n, nil)
                n.anterior = @principio
                @final = n
            else
                @principio = Nodo.new(referencia, nil, nil)
                @final = @principio
            end
        end
        
        #Extraer nodo de la lista por el principio
        def extraer_lista_principio
            ref = @principio
            @principio = ref.siguiente
            if @principio != nil
                @principio.anterior = nil
            else
                @final = @principio
            end
            ref
        end
        
        #Insertar nodo en la lista por el final
        def insertar_lista_final(referencia)
            if @final != nil
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
            ref = @final
            @final = ref.anterior
            if @final != nil
                @final.siguiente = nil
            else
                @principio = @final
            end
            ref
        end
        
        # Para hacer la clase enumerable
        def each
            nodo  = @principio
            while (nodo != nil)
                yield nodo.referencia
                nodo = nodo.siguiente
            end
        end
    end
end