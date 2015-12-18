# Módulo Bibliográfico
module Bibliografia

  # Clase Referencia para gestionar las de una Bibliografía
  class Referencia
    include Comparable
    
    # Getters + Setters
    attr_accessor :titulo, :autores, :fechas_publicacion
     
    # Constructor
    def initialize(titulo, &bloque)
      self.titulo = titulo
      self.autores = []
      self.fechas_publicacion = []
     
      instance_eval &block if block_given?
    end
    
    # Introduce un string con el autor de la referencia
    def autor(nombre, options = {})
      autor = nombre
      autores << autor
    end
    
    # Introduce un string con la fecha de publicación de la referencia 
    def fecha_publicacion(formato, options = {})
      fecha_publicacion = formato
      fechas_publicacion << fecha_publicacion
    end
    
    # Guerra de las galaxias 
    def <=>(other)
      if((@autores <=> other.autores) == 0)
        if((@fechas_publicacion <=> other.fechas_publicacion) == 0)
          @titulos <=> other.titulos
        else
          @fechas_publicacion <=> other.fechas_publicacion
        end
      else
        @autores <=> other.autores
      end
    end
  end   

  class Libro < Referencia
    # Getters + Setters 
    attr_accessor :ediciones, :volumenes, :lugares_publicacion, :editoriales
     
    # Constructor 
    def initialize(titulo, &bloque)
      self.titulo = titulo
      self.autores = []
      self.fechas_publicacion = []
      self.ediciones = []
      self.volumenes = []
      self.lugares_publicacion = []
      self.editoriales = []
    
      instance_eval &bloque if block_given?
    end
    
    # Introduce un string con el autor de un libro 
    def autor(nombre, options = {})
      autor = nombre
      autores << autor
    end
    
    # Introduce un string con la fecha de publicación de un libro 
    def fecha_publicacion(ano, options = {})
      fecha_publicacion = ano
      fechas_publicacion << fecha_publicacion
    end
    
    # Introduce un string con la edición de un libro  
    def edicion(numero, options = {})
      edicion = numero
      ediciones << edicion
    end
    
    # Introduce un string con el volumen de un libro  
    def volumen(numero, options = {})
      volumen = numero
      volumenes << volumen
    end
    
    # Introduce un string con el lugar de publicación de un libro  
    def lugar_publicacion(pais, options = {})
      lugar_publicacion = pais
      lugares_publicacion << lugar_publicacion
    end
    
    # Introduce un string con la editorial de un libro   
    def editorial(nombre, options = {})
      editorial = nombre
      editoriales << editorial
    end
    
    # Para método puts 
    def to_s()
      salida = "#{titulo},"
      salida << " #{autores.join(', ')}, "
      salida << "(#{fechas_publicacion.join(', ')}), "
      salida << "(#{ediciones.join(', ')}), "
      salida << "(#{volumenes.join(', ')}), "
      salida << "#{lugares_publicacion.join(', ')}, "
      salida << "#{editoriales.join(', ')} "
      return salida
    end
  end     

  # class Articulo_libro < Referencia
  #   # Getter + Setter
  #   attr_accessor :lugar_publicacion, :sinopsis
    
  #   # Constructor
  #   def initialize(*parametros, lugar_publicacion, sinopsis)
  #       super(*parametros)
  #       @lugar_publicacion = lugar_publicacion
  #       @sinopsis = sinopsis
  #   end
  # end
  
  # class Articulo_revista < Referencia
  #   # Getter + Setter
  #   attr_accessor :nombre_revista, :lugar_publicacion, :idioma
    
  #   # Constructor
  #   def initialize(*parametros, nombre_revista, lugar_publicacion, idioma)
  #       super(*parametros)
  #       @nombre_revista = nombre_revista
  #       @lugar_publicacion = lugar_publicacion
  #       @idioma = idioma
  #   end
  # end
  
  # class Articulo_periodico < Referencia
  #   # Getter + Setter
  #   attr_accessor :nombre_periodico, :num_paginas
    
  #   # Constructor
  #   def initialize(*parametros, nombre_periodico, num_paginas)
  #       super(*parametros)
  #       @nombre_periodico = nombre_periodico
  #       @num_paginas = num_paginas
  #   end
  # end
  
  # class Documento_electronico < Referencia
  #   # Getter + Setter
  #   attr_accessor :medio, :lugar_publicacion, :url
    
  #   # Constructor
  #   def initialize(*parametros, medio, lugar_publicacion, url)
  #       super(*parametros)
  #       @medio = medio
  #       @lugar_publicacion = lugar_publicacion
  #       @url = url
  #   end
  # end
end


