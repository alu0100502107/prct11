# Módulo Bibliografía
module Bibliografia

  # Clase Referencia para gestionar una Bibliografía
  class Referencia
    include Comparable
    
    # Getters + Setters
    attr_accessor :titulo, :autores, :fechas_publicacion
     
    # Constructor
    def initialize(titulo, &bloque)
      self.titulo = titulo
      self.autores = []
      self.fechas_publicacion = []
     
      instance_eval &bloque if block_given?
    end
    
    # Introduce un string con el autor de la referencia
    def autor(nombre, opciones = {})
      autor = nombre
      autores << autor
    end
    
    # Introduce un string con la fecha de publicación de la referencia 
    def fecha_publicacion(formato, opciones = {})
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

  # Clase Libro hija de Rerefencia
  class Libro < Referencia
    # Getters + Setters 
    attr_accessor :num_ediciones, :volumenes, :lugares_publicacion, :editoriales, :num_isbns
     
    # Constructor 
    def initialize(titulo, &bloque)
      self.titulo = titulo
      self.autores = []
      self.fechas_publicacion = []
      self.num_ediciones = []
      self.volumenes = []
      self.lugares_publicacion = []
      self.editoriales = []
      self.num_isbns = []
    
      instance_eval &bloque if block_given?
    end
    
    # Introduce un string con el autor de un libro 
    def autor(nombre, opciones = {})
      autor = nombre
      autores << autor
    end
    
    # Introduce un string con la fecha de publicación de un libro 
    def fecha_publicacion(fecha, opciones = {})
      fecha_publicacion = fecha
      fechas_publicacion << fecha_publicacion
    end
    
    # Introduce un string con la edición de un libro  
    def num_edicion(numero, opciones = {})
      num_edicion = numero
      num_ediciones << num_edicion
    end
    
    # Introduce un string con el volumen de un libro  
    def volumen(numero, opciones = {})
      volumen = numero
      volumenes << volumen
    end
    
    # Introduce un string con el lugar de publicación de un libro  
    def lugar_publicacion(pais, opciones = {})
      lugar_publicacion = pais
      lugares_publicacion << lugar_publicacion
    end
    
    # Introduce un string con la editorial de un libro   
    def editorial(nombre, opciones = {})
      editorial = nombre
      editoriales << editorial
    end
    
    # Introduce un string con el isbn de un libro  
    def num_isbn(numero, opciones = {})
      num_isbn = numero
      num_isbns << num_isbn
    end
    
    # Para método puts 
    def to_s()
      salida = "#{titulo},"
      salida << " #{autores.join(', ')}, "
      salida << "(#{fechas_publicacion.join(', ')}), "
      salida << "(#{num_ediciones.join(', ')}), "
      salida << "(#{volumenes.join(', ')}), "
      salida << "#{lugares_publicacion.join(', ')}, "
      salida << "#{editoriales.join(', ')}, "
      salida << "#{num_isbns.join(', ')} "
      return salida
    end
  end # Libro    

  # Clase Articulo_Libro hijo de Rerefencia
  class Articulo_libro < Referencia
    # Getters + Setters 
    attr_accessor :num_ediciones, :volumenes, :lugares_publicacion, :editoriales, :num_isbns, :nombres_libro, :num_paginas
     
    # Constructor 
    def initialize(titulo, &bloque)
      self.titulo = titulo
      self.autores = []
      self.fechas_publicacion = []
      self.num_ediciones = []
      self.volumenes = []
      self.lugares_publicacion = []
      self.editoriales = []
      self.num_isbns = []
      self.nombres_libro = []
      self.num_paginas = []
    
      instance_eval &bloque if block_given?
    end
    
    # Introduce un string con el autor del artículo de un libro 
    def autor(nombre, opciones = {})
      autor = nombre
      autores << autor
    end
    
    # Introduce un string con la fecha de publicación del artículo de un libro 
    def fecha_publicacion(ano, opciones = {})
      fecha_publicacion = ano
      fechas_publicacion << fecha_publicacion
    end
    
    # Introduce un string con la edición del artículo de un libro  
    def num_edicion(numero, opciones = {})
      num_edicion = numero
      num_ediciones << num_edicion
    end
    
    # Introduce un string con el volumen del artículo de un libro  
    def volumen(numero, opciones = {})
      volumen = numero
      volumenes << volumen
    end
    
    # Introduce un string con el lugar de publicación del artículo de un libro  
    def lugar_publicacion(pais, opciones = {})
      lugar_publicacion = pais
      lugares_publicacion << lugar_publicacion
    end
    
    # Introduce un string con la editorial del artículo de un libro   
    def editorial(nombre, opciones = {})
      editorial = nombre
      editoriales << editorial
    end
    
    # Introduce un string con el isbn del artículo de un libro  
    def num_isbn(numero, opciones = {})
      num_isbn = numero
      num_isbns << num_isbn
    end
    
    # Introduce un string con el nombre del libro del artículo de un libro  
    def nombre_libro(nombre, opciones = {})
      nombre_libro = nombre
      nombres_libro << nombre_libro
    end
  
    # Introduce un string con el número de páginas que tiene el artículo de un libro  
    def num_pagina(numero, opciones = {})
      num_pagina = numero
      num_paginas << num_pagina
    end
    
    # Para método puts 
    def to_s()
      salida = "#{titulo},"
      salida << " #{autores.join(', ')}, "
      salida << "(#{fechas_publicacion.join(', ')}), "
      salida << "(#{num_ediciones.join(', ')}), "
      salida << "(#{volumenes.join(', ')}), "
      salida << "#{lugares_publicacion.join(', ')}, "
      salida << "#{editoriales.join(', ')}, "
      salida << "#{num_isbns.join(', ')}, "
      salida << "#{nombres_libro.join(', ')}, "
      salida << "#{num_paginas.join(', ')} "
      return salida
    end
  end # Articulo_libro
  
  # Clase Articulo_periodico hijo de Rerefencia
  class Articulo_periodico < Referencia
    # Getters + Setters 
    attr_accessor :lugares_publicacion, :nombres_periodico, :num_paginas
     
    # Constructor 
    def initialize(titulo, &bloque)
      self.titulo = titulo
      self.autores = []
      self.fechas_publicacion = []
      self.lugares_publicacion = []
      self.nombres_periodico = []
      self.num_paginas = []
    
      instance_eval &bloque if block_given?
    end
    
    # Introduce un string con el autor de un artículo de un periodico
    def autor(nombre, opciones = {})
      autor = nombre
      autores << autor
    end
    
    # Introduce un string con la fecha de publicación de un artículo de un periodico
    def fecha_publicacion(ano, opciones = {})
      fecha_publicacion = ano
      fechas_publicacion << fecha_publicacion
    end
    
    # Introduce un string con el lugar de publicación de un artículo de un periodico  
    def lugar_publicacion(pais, opciones = {})
      lugar_publicacion = pais
      lugares_publicacion << lugar_publicacion
    end
    
    # Introduce un string con el nombre del periodico de un artículo de un periodico    
    def nombre_periodico(nombre, opciones = {})
      nombre_periodico = nombre
      nombres_periodico << nombre_periodico
    end
    
    # Introduce un string con el número de página de un artículo de un periodico  
    def num_pagina(numero, opciones = {})
      num_pagina = numero
      num_paginas << num_pagina
    end
    
    # Para método puts 
    def to_s()
      salida = "#{titulo},"
      salida << " #{autores.join(', ')}, "
      salida << "(#{fechas_publicacion.join(', ')}), "
      salida << "#{lugares_publicacion.join(', ')}, "
      salida << "#{nombres_periodico.join(', ')}, "
      salida << "#{num_paginas.join(', ')} "
      return salida
    end
  end     
  
  # Clase Documento electrónico hijo de Rerefencia
  class Documento_electronico < Referencia
    # Getters + Setters 
    attr_accessor :formatos, :editoriales, :idiomas
     
    # Constructor 
    def initialize(titulo, &bloque)
      self.titulo = titulo
      self.autores = []
      self.fechas_publicacion = []
      self.formatos = []
      self.editoriales = []
      self.idiomas = []
    
      instance_eval &bloque if block_given?
    end
    
    # Introduce un string con el autor de un documento electrónico
    def autor(nombre, opciones = {})
      autor = nombre
      autores << autor
    end
    
    # Introduce un string con la fecha de publicación de un documento electrónico
    def fecha_publicacion(ano, opciones = {})
      fecha_publicacion = ano
      fechas_publicacion << fecha_publicacion
    end
    
    # Introduce un string con el formato de un documento electrónico
    def formato(tipo, opciones = {})
      formato = tipo
      formatos << formato
    end
    
    # Introduce un string con la editorial de un documento electrónico
    def editorial(nombre, opciones = {})
      editorial = nombre
      editoriales << editorial
    end
    
    # Introduce un string con el idioma de un documento electrónico
    def idioma(pais, opciones = {})
      idioma = pais
      idiomas << idioma
    end
    
    # Para método puts 
    def to_s()
      salida = "#{titulo},"
      salida << " #{autores.join(', ')}, "
      salida << "(#{fechas_publicacion.join(', ')}), "
      salida << "#{formatos.join(', ')}, "
      salida << "#{editoriales.join(', ')}, "
      salida << "#{idiomas.join(', ')} "
      return salida
    end
  end # Clase Documento Electrónico    
end # Módulo Bibliografia


