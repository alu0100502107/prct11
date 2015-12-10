# Módulo Bibliográfico
module Bibliografia

  # Clase Referencia para gestionar las de una Bibliografía
  class Referencia
    include Comparable
    # Getters 
    attr_accessor :autores, :apellidos, :titulo, :serie, :editorial, :num_edicion, :dia, :mes, :ano, :num_isbns

    # Constructor
    def initialize(autores, apellidos, titulo, serie, editorial, num_edicion, dia, mes, ano, num_isbns)
      @autores = autores
      @apellidos = apellidos
      @titulo = titulo
      @serie = serie
      @editorial = editorial
      @num_edicion = num_edicion
      @dia = dia
      @mes = mes
      @ano = ano
      @num_isbns = num_isbns
    end
    
    # Obtener autor/es y apellido/s
    def get_autores_apellidos
      tamano = @autores.lenght
      i = 0
      while i < (tamano - 1)
        cadena = "#{cadena}"+"#{@autores[i]} #{@apellidos[i]}, "
        i = i+1
      end
      cadena = "#{cadena}"+"#{@autores[i]} #{@apellidos[i]}"
    end
    
    # Obtener título
    def get_titulo 
      "#{@titulo}"
    end
    
    # Obtener serie
    def get_serie 
      "#{@serie}"
    end
    
    # Obtener editorial
    def get_editorial 
      "#{@editorial}"
    end
    
    # Obtener número de edición
    def get_num_edicion 
      "#{@num_edicion}"
    end
    
    # Obtener fecha de publicación con mes y año
    def get_fecha_publicacion 
      "#{@dia}, #{@mes}, #{@ano}"
    end
    
    # Obtener número de isbn/s
    def get_num_isbns
      tamano = @num_isbns.length
        
      a = @num_isbns[0].length
        
      cadena = "ISBN-#{a}: "
        if a > 10
            cadena = "#{cadena}"+"#{@num_isbns[0][-a..-11]}"+"-"+"#{@num_isbns[0][-10..-1]}"
        else
            cadena = "#{cadena}"+"#{@num_isbns[0]}"
        end
        
        i = 1
        while i < tamano
            a = @num_isbns[i].length
            
            cadena = "#{cadena}"+"\nISBN-#{a}: "
            if a > 10
                cadena = "#{cadena}"+"#{@num_isbns[i][-a..-11]}"+"-"+"#{@num_isbns[i][-10..-1]}"
            else
                cadena = "#{cadena}"+"#{@num_isbns[i]}"
            end
            i = i+1
        end
        cadena
    end
    
    # Para método puts
    def to_s
      cadena = "#{get_autores_apellidos}.\n"
      cadena = "#{cadena}"+"#{get_titulo}\n"
      cadena = "#{cadena}"+"(#{get_serie})\n"
      cadena = "#{cadena}"+"#{get_editorial}; #{get_num_edicion} edicion (#{get_fecha_publicacion})\n"
      cadena = "#{cadena}"+"#{get_num_isbns}" 
    end
    
    # Guerra de las galaxias
    def <=>(other)
      return nil unless other.is_a? Referencia
        if (@apellidos != other.apellidos)
            @apellidos <=> other.apellidos
        else
            if (@ano != other.ano)
                @ano <=> other.ano
            else
               @titulo <=> other.titulo
            end
        end
    end
    
    # Igualar títulos
    def ==(other)
      return nil unless other.is_a? Referencia
        @titulo == other.titulo
    end
  
  end
  
  class Libro < Referencia
    #Constructor
    def initialize(*parametros)
      super
    end
  end # clase
  
  class Articulo_libro < Referencia
    # Getter + Setter
    attr_accessor :lugar_publicacion, :sinopsis
    
    # Constructor
    def initialize(*parametros, lugar_publicacion, sinopsis)
        super(*parametros)
        @lugar_publicacion = lugar_publicacion
        @sinopsis = sinopsis
    end
  end
  
  class Articulo_revista < Referencia
    # Getter + Setter
    attr_accessor :nombre_revista, :lugar_publicacion, :idioma
    
    # Constructor
    def initialize(*parametros, nombre_revista, lugar_publicacion, idioma)
        super(*parametros)
        @nombre_revista = nombre_revista
        @lugar_publicacion = lugar_publicacion
        @idioma = idioma
    end
  end
  
  class Articulo_periodico < Referencia
    # Getter + Setter
    attr_accessor :nombre_periodico, :num_paginas
    
    # Constructor
    def initialize(*parametros, nombre_periodico, num_paginas)
        super(*parametros)
        @nombre_periodico = nombre_periodico
        @num_paginas = num_paginas
    end
  end
  
  class Documento_electronico < Referencia
    # Getter + Setter
    attr_accessor :medio, :lugar_publicacion, :url
    
    # Constructor
    def initialize(*parametros, medio, lugar_publicacion, url)
        super(*parametros)
        @medio = medio
        @lugar_publicacion = lugar_publicacion
        @url = url
    end
  end
end