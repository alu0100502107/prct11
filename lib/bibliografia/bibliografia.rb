# Módulo Bibliográfico
module Bibliografia

  # Clase Referencia para gestionar las de una Bibliografía
  class Referencia
    include Comparable
    # Getters 
    attr_accessor :autores, :titulo, :serie, :editorial, :num_edicion, :fecha_publicacion, :num_isbns

    # Constructor
    def initialize(autores, titulo, serie, editorial, num_edicion, fecha_publicacion, num_isbns)
      @autores = autores
      titulo == "" ? @titulo = titulo : @titulo = titulo.split.map(&:capitalize).join(' ')
      serie == "" ? @serie = serie : @serie = '(' + serie[1..-1].split.map(&:capitalize).join(' ')
      @editorial = editorial
      @num_edicion = num_edicion
      @fecha_publicacion = fecha_publicacion
      @num_isbns = num_isbns
    end
    
    # Obtener apellido e inicial del nombre 
    def get_autores_apellidos(autor)
      trozo = autor.split = [" "]
      nombre, apellido = trozo[0], trozo[1]
      apellido + ", " + nombre[0]
    end
 
    # Muestra lista de autores
    def print_autor
      count = 0
      lista = ""
      autores.each do |autor|
        count += 1
        lista += get_autores_apellidos(autor)
        lista += " & " if count != autores.size
      end
      lista
    end

    # Muestra lista de isbn
    def print_isbn
      lista = ""
      num_isbns.each do |isbn|
        count = 0
        lista += "ISBN-" + isbn.delete('^0-9').size.to_s + ": " + isbn
        lista += "\n\t" if count != num_isbns.size
      end
      lista
    end

    # Para método puts
    def to_s
      "#{print_autor}\n\t#{titulo}\n\t#{serie}\n\t#{editorial}; #{num_edicion} #{fecha_publicacion}\n\t#{print_isbn}"
    end
    
    # Guerra de las galaxias
    def <=>(other)
        mi_fecha = @fecha_publicacion[/.*, ([^\)]*)/,1]
        otra_fecha = other.fecha_publicacion[/.*, ([^\)]*)/,1]
        if (@autores != other.autores)
            @autores <=> other.autores
        else
          if (mi_fecha != otra_fecha)
          mi_fecha <=> otra_fecha
          else
             @titulo <=> other.titulo
          end
        end
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
