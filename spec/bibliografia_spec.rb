require 'spec_helper'

describe Bibliografia do
  # context "Bibliografia" do 
  #   before :all do
  #     @libro1 = Bibliografia::Referencia.new(
  #       ["Dave Thomas", "Andy Hunt", "Chad Fowler"], 
  #       "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide",
  #       "(The Facets of Ruby)",
	 #     "Pragmatic Bookshelf",
	 #     "4 edition",
	 #     "(July 7, 2013)",
	 #     ["968-1937785499", "1937785491"]
	 #   )
  #   end
    
  #   it "Deben de existir uno o más autores" do
  #     expect(@libro1.autores).not_to be_empty 
  #   end
   
  #   it "Debe de existir un título" do
  #     expect(@libro1.titulo).not_to be_nil
  #   end
   
  #   it "Debe de existir una serie" do
  #     expect(@libro1.serie).not_to be_nil
  #   end
   
  #   it "Debe existir una editorial" do
  #     expect(@libro1.editorial).not_to be_nil
  #   end

  #   it "Debe existir un número de edición" do
  #     expect(@libro1.num_edicion).not_to be_nil
  #   end
   
  #   it "Debe existir una fecha de publicación" do
  #     expect(@libro1.fecha_publicacion).not_to be_nil
  #   end
   
  #   it "Debe existir uno o más números ISBN" do
  #     expect(@libro1.num_isbns).not_to be_empty 
  #   end
   
  #   it "Debe existir un método para obtener el listado de autores" do
  #     expect(@libro1.print_autor).to eq("Dave Thomas, Andy Hunt, Chad Fowler")
  #   end
   
  #   it "Existe método para obtener el titulo" do
  #     expect(@libro1.titulo).to eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide")
  #   end
  
  #   it "Existe un método para obtener la serie" do
  #     expect(@libro1.serie).to eq("(The Facets of Ruby)") 
  #   end
   
  #   it "Existe un método que devuelve la editorial" do
  #     expect(@libro1.editorial).to eq("Pragmatic Bookshelf")     
  #   end
   
  #   it "Existe un método para obtener el número de edición" do
  #     expect(@libro1.num_edicion).to eq("4 edition") 
  #   end
   
  #   it "Existe un método para obtener la fecha de publicación" do
  #     expect(@libro1.fecha_publicacion).to eq("(July 7, 2013)") 
  #   end
   
  #   it "Existe un método para obtener el listado ISBN" do
  #     expect(@libro1.print_isbn).to eq("ISBN-13: 968-1937785499\nISBN-10: 1937785491\n")
  #   end
   
  #   it "Existe un método para obtener la referencia formateada" do
  #     expect(@libro1.to_s).to eq("Dave Thomas, Andy Hunt, Chad Fowler\nProgramming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide\n(The Facets of Ruby)\nPragmatic Bookshelf; 4 edition (July 7, 2013)\nISBN-13: 968-1937785499\nISBN-10: 1937785491\n")
  #   end
  # end
   
  # context "Nodo" do
  #   before :all do
  #     @nodo = Bibliografia::Nodo.new("n1", "n2", "n3")
  #   end
    
  #   it "Debe existir un nodo de la lista con sus datos, su siguiente y su anterior" do
  #     expect(@nodo.referencia).to eq("n1")
  #     expect(@nodo.siguiente).to eq("n2")
  #     expect(@nodo.anterior).to eq("n3")
  #   end
  # end

  # context "Lista Enlazada" do
  #   before :all do
  #     @libro2 = Bibliografia::Referencia.new(
  #       ["Dave Thomas", "Andy Hunt", "Chad Fowler"], 
  #       "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide",
  #       "(The Facets of Ruby)",
	 #     "Pragmatic Bookshelf",
	 #     "4 edition",
	 #     "(July 7, 2013)",
	 #     ["968-1937785499", "1937785491"]
	 #   )
	 #   @libro3 = Bibliografia::Referencia.new(
  #       ["Scott Chacon"], 
  #       "Pro Git 2009th Edition",
  #       "Pro",
	 #     "Apress",
	 #     "2009 edition" ,
	 #     "August 27, 2009",
	 #     ["968-1430218333", "1430218339"]
	 #   ) 
  #     @lista = Bibliografia::Lista_enlazada.new
  #   end 
    
  #   it "Se extrae el primer elemento de la lista" do
  #     @lista.insertar_lista_principio(@libro2)
  #     expect(@lista.principio.referencia).to eq(@libro2)
  #     @lista.extraer_lista_principio
  #   end
    
  #   it "Se puede insertar un elemento por el principio" do
  #     @lista.insertar_lista_principio(@libro2)
  #     expect(@lista.principio.referencia).to eq(@libro2)
  #   end
    
  #   it "Se pueden insertar varios elementos por el principio" do
  #     @lista.insertar_lista_principio(@libro2)
  #     expect(@lista.principio.referencia).to eq(@libro2)
  #     @lista.insertar_lista_principio(@libro3)
  #     expect(@lista.principio.referencia).to eq(@libro3)
  #   end
    
  #   it "Debe existir una lista con su cabeza" do
  #     @lista.insertar_lista_principio(@libro2)
  #     expect(@lista.principio.referencia).to eq(@libro2)
  #   end 
    
  #   it "Se extrae el último elemento de la lista" do
  #     @lista.insertar_lista_final(@libro3)
  #     expect(@lista.final.referencia).to eq(@libro3)
  #     @lista.extraer_lista_final
  #   end
    
  #   it "Se puede insertar un elemento por el final" do
  #     @lista.insertar_lista_final(@libro3)
  #     expect(@lista.final.referencia).to eq(@libro3)
  #   end
    
  #   it "Se pueden insertar varios elementos por el final" do
  #     @lista.insertar_lista_final(@libro3)
  #     expect(@lista.final.referencia).to eq(@libro3)
  #     @lista.insertar_lista_final(@libro2)
  #     expect(@lista.final.referencia).to eq(@libro2)
  #   end
    
  #   #it "Se inserta por el final de la lista y se extrae por el principio de la lista" do
  #   #  @lista.insertar_lista_final(@libro3)
  #   #  expect(@lista.final.referencia.to_s).to eq(@libro3.to_s)
  #     #@lista.insertar_lista_principio(@libro2)
  #     #expect(@lista.principio.referencia.to_s).to eq(@libro2.to_s)
  #     #expect(@lista.extraer_lista_principio.to_s).to eq(@libro2.to_s)
  #   #end
  # end  #context
  
  # context "Libro" do
  #   before :all do
  #     @libro4 = Bibliografia::Libro.new(
  #       ["David Flanagan", "Yukihiro Matsumoto"], 
  #       "The Ruby Programming Language",
  #       "",
	 #     "O’Reilly Media",
	 #     "1 edition" ,
	 #     "February 4, 2008",
	 #     ["0596516177", "978-0596516178"]
	 #   ) 
  #   end
    
  #   it "Es un Libro" do
  #     expect(@libro4).is_a?Bibliografia::Libro
  #   end
    
  #   it "Es una Referencia" do
  #     expect(@libro4).is_a?Bibliografia::Referencia
  #   end
    
  #   it "Es una instancia de Libro" do
  #     expect(@libro4).instance_of?Bibliografia::Libro
  #   end
  # end # context
  
  # context "Artículo de Revista" do
  #   before :all do
  #     @articulo_revista = Bibliografia::Articulo_revista.new(
  #       ["David Chelimsky", "Dave Astels", " Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy"], 
  #       "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends",
  #       "The Facets of Ruby",
	 #     "Pragmatic Bookshelf",
	 #     "1 edition" ,
	 #     "December 25, 2010",
	 #     ["1934356379", "978-1934356371"],
	 #     ""
	 #   )
  #   end
    
  #   it "Es un artículo de Revista" do
  #     expect(@articulo_revista).to be_a Bibliografia::Articulo_revista
  #   end
    
  #   it "Es una Referencia" do
  #     expect(@articulo_revista).to be_a Bibliografia::Referencia
  #   end
  # end # context
  
  # context "Artículo de Periodico" do
  #   before :all do
  #     @articulo_periodico = Bibliografia::Articulo_periodico.new(
  #       ["Richard E. Silverman"], 
  #       "Git Pocket Guide",
  #       "Serie",
	 #     "O’Reilly Media",
	 #     "1 edition" ,
	 #     "August 2, 2013",
	 #     "",
	 #     "8"
	 #   )
  #   end
    
  #   it "Es un artículo de Periodico" do
  #     expect(@articulo_periodico).to be_a Bibliografia::Articulo_periodico
  #   end
    
  #   it "Es una Referencia" do
  #     expect(@articulo_periodico).to be_a Bibliografia::Referencia
  #   end

  # end # context
  
  # context "Documento electronico" do
  #   before :all do
  #     @documento_electronico = Bibliografia::Documento_electronico.new(
  #       ["Richard E. Silverman"], 
  #       "Git Pocket Guide",
  #       "Serie",
	 #     "O’Reilly Media",
	 #     "1 edition" ,
	 #     "August 2, 2013",
	 #     "",
	 #     "https://www.oreillymedia.es"
	 #   )
  #   end
    
  #   it "Es un documento electrónico" do
  #     expect(@documento_electronico).to be_a Bibliografia::Documento_electronico
  #   end
    
  #   it "Es una Referencia" do
  #     expect(@documento_electronico).to be_a Bibliografia::Referencia
  #   end
  # end # context
  
  # context "Referencias bibliográficas comparables" do
  #   before :each do
  #     @libro1 = Bibliografia::Referencia.new(
  #       ["Dave Thomas", "Andy Hunt", "Chad Fowler"], 
  #       "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide",
  #       "(The Facets of Ruby)",
	 #     "Pragmatic Bookshelf",
	 #     "4 edition",
	 #     "(July 7, 2013)",
	 #     ["968-1937785499", "1937785491"]
	 #   )
	 #   @libro2  = Bibliografia::Referencia.new(
  #       ["Scott Chacon"], 
  #       "Pro Git 2009th Edition",
  #       "Pro",
	 #     "Apress",
	 #     "2009 edition" ,
	 #     "August 27, 2009",
	 #     ["968-1430218333", "1430218339"]
	 #   ) 
	 #   @articulo_revista = Bibliografia::Articulo_revista.new(
  #       ["David Chelimsky", "Dave Astels", " Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy"], 
  #       "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends",
  #       "The Facets of Ruby",
	 #     "Pragmatic Bookshelf",
	 #     "1 edition" ,
	 #     "December 25, 2010",
	 #     ["1934356379", "978-1934356371"],
	 #     ""
	 #   )
	 #    @articulo_periodico = Bibliografia::Articulo_periodico.new(
  #       ["Richard E. Silverman"], 
  #       "Git Pocket Guide",
  #       "Serie",
	 #     "O’Reilly Media",
	 #     "1 edition" ,
	 #     "August 2, 2013",
	 #     "",
	 #     "8"
	 #   )
  #   @documento_electronico = Bibliografia::Documento_electronico.new(
  #       ["Richard E. Silverman"], 
  #       "Git Pocket Guide",
  #       "Serie",
	 #     "O’Reilly Media",
	 #     "1 edition" ,
	 #     "August 2, 2013",
	 #     "",
	 #     "https://www.oreillymedia.es"
	 #   )
  #   end 
    
  #   it "Comprobando que la fecha de publicación del libro1 es < que la del libro2" do
  #     expect(@libro1 < @libro2).to eq(true)
  #   end
    
  #   it "Comprobando que la fecha de publicación del artículo de un periodico es = que la del documento electrónico" do
  #     expect(@articulo_periodico == @documento_electronico).to eq(true)
  #   end
    
  #   it "Comprobando que la fecha de publicación del artículo de un periodico es > que la del libro1" do
  #     expect(@articulo_periodico > @libro1).to eq(true)
  #   end
    
  #   it "Comprobando que la fecha de publicación del libro2 es <= que la de un artículo de una revista" do
  #     expect(@libro2 <= @articulo_revista).to eq(true)
  #   end
    
  #   it "Comprobando que la fecha de publicación del artículo de un periodico es >= que la del documento electrónico" do
  #     expect(@articulo_periodico >= @documento_electronico).to eq(true)
  #   end
  # end # context
  
  # context "Listas doblemente enlazadas enumerables" do
  #   before :each do
  #     @libro1 = Bibliografia::Referencia.new(
  #       ["Dave Thomas", "Andy Hunt", "Chad Fowler"], 
  #       "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide",
  #       "(The Facets of Ruby)",
	 #     "Pragmatic Bookshelf",
	 #     "4 edition",
	 #     "(July 7, 2013)",
	 #     ["968-1937785499", "1937785491"]
	 #   )
	 #   @libro2 = Bibliografia::Referencia.new(
  #       ["Scott Chacon"], 
  #       "Pro Git 2009th Edition",
  #       "Pro",
	 #     "Apress",
	 #     "2009 edition" ,
	 #     "August 27, 2009",
	 #     ["968-1430218333", "1430218339"]
	 #   )    
	 #   @libro3 = Bibliografia::Referencia.new(
  #       ["David Flanagan", "Yukihiro Matsumoto"], 
  #       "The Ruby Programming Language",
  #       "Serie",
	 #     "O’Reilly Media",
	 #     "1 edition" ,
	 #     "February 4, 2008",
	 #     ["0596516177", "978-0596516178"]
	 #   )    
	 #   @libro4 = Bibliografia::Referencia.new(
  #       ["David Chelimsky", "Dave Astels", " Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy"], 
  #       "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends",
  #       "The Facets of Ruby",
	 #     "Pragmatic Bookshelf",
	 #     "1 edition" ,
	 #     "December 25, 2010",
	 #     ["1934356379", "978-1934356371"]
	 #   )
	 #   @libro5 = Bibliografia::Referencia.new(
  #       ["Richard E. Silverman"], 
  #       "Git Pocket Guide",
  #       "Serie",
	 #     "O’Reilly Media",
	 #     "1 edition" ,
	 #     "August 2, 2013",
	 #     ["1449325866", "978-1449325862"]
	 #   )
	 #   @lista = Bibliografia::Lista_enlazada.new
	 # end
	  
	 # it "Comprobando el método max" do
	 #   @lista.insertar_lista_final(@libro1)
  #     expect(@lista.final.referencia).to eq(@libro1)
  #     @lista.insertar_lista_final(@libro2)
  #     expect(@lista.final.referencia).to eq(@libro2)
  #     @lista.insertar_lista_final(@libro3)
  #     expect(@lista.final.referencia).to eq(@libro3)
  #     @lista.insertar_lista_final(@libro4)
  #     expect(@lista.final.referencia).to eq(@libro4)
  #     @lista.insertar_lista_final(@libro5)
  #     expect(@lista.final.referencia).to eq(@libro5)
  #     expect(@lista.max).to eq(@libro3)
	 # end
	  
	 # it "Comprobando el método min" do
	 #   @lista.insertar_lista_final(@libro1)
  #     expect(@lista.final.referencia).to eq(@libro1)
  #     @lista.insertar_lista_final(@libro2)
  #     expect(@lista.final.referencia).to eq(@libro2)
  #     @lista.insertar_lista_final(@libro3)
  #     expect(@lista.final.referencia).to eq(@libro3)
  #     @lista.insertar_lista_final(@libro4)
  #     expect(@lista.final.referencia).to eq(@libro4)
  #     @lista.insertar_lista_final(@libro5)
  #     expect(@lista.final.referencia).to eq(@libro5)
  #     expect(@lista.min).to eq(@libro1)
	 # end
	  
	 # it "Comprobando el método sort" do
	 #   @lista.insertar_lista_final(@libro1)
  #     expect(@lista.final.referencia).to eq(@libro1)
  #     @lista.insertar_lista_final(@libro2)
  #     expect(@lista.final.referencia).to eq(@libro2)
  #     @lista.insertar_lista_final(@libro3)
  #     expect(@lista.final.referencia).to eq(@libro3)
  #     @lista.insertar_lista_final(@libro4)
  #     expect(@lista.final.referencia).to eq(@libro4)
  #     @lista.insertar_lista_final(@libro5)
  #     expect(@lista.final.referencia).to eq(@libro5)
  #     expect(@lista.sort).to eq([@libro1, @libro5, @libro2, @libro4, @libro3])
	 # end
	  
	 # it "Comprobando el método all?" do
	 #   @lista.insertar_lista_final(@libro1)
  #     expect(@lista.final.referencia).to eq(@libro1)
  #     @lista.insertar_lista_final(@libro2)
  #     expect(@lista.final.referencia).to eq(@libro2)
  #     @lista.insertar_lista_final(@libro3)
  #     expect(@lista.final.referencia).to eq(@libro3)
  #     @lista.insertar_lista_final(@libro4)
  #     expect(@lista.final.referencia).to eq(@libro4)
  #     @lista.insertar_lista_final(@libro5)
  #     expect(@lista.final.referencia).to eq(@libro5)
  #     expect(@lista.all?).to eq(true)
	 # end
	  
	 # it "Comprobando el método drop" do
	 #   @lista.insertar_lista_final(@libro1)
  #     expect(@lista.final.referencia).to eq(@libro1)
  #     @lista.insertar_lista_final(@libro2)
  #     expect(@lista.final.referencia).to eq(@libro2)
  #     @lista.insertar_lista_final(@libro3)
  #     expect(@lista.final.referencia).to eq(@libro3)
  #     @lista.insertar_lista_final(@libro4)
  #     expect(@lista.final.referencia).to eq(@libro4)
  #     @lista.insertar_lista_final(@libro5)
  #     expect(@lista.final.referencia).to eq(@libro5)
  #     expect(@lista.drop(2)).to eq([@libro3,@libro4,@libro5])
	 # end
	  
	 # it "Comprobando el método any?" do
	 #   @lista.insertar_lista_final(@libro1)
  #     expect(@lista.final.referencia).to eq(@libro1)
  #     @lista.insertar_lista_final(@libro2)
  #     expect(@lista.final.referencia).to eq(@libro2)
  #     @lista.insertar_lista_final(@libro5)
  #     expect(@lista.final.referencia).to eq(@libro5)
  #     expect(@lista.any?).to eq(true)
	 # end
  # end # context
  
  context "Cita" do
    before :all do
      @libro1 = Bibliografia::Referencia.new(
        ["Dave Thomas", "Andy Hunt", "Chad Fowler"], 
        "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide",
        "(The Facets of Ruby)",
	      "Pragmatic Bookshelf",
	      "4 edition",
	      "(July 7, 2013)",
	      ["968-1937785499", "1937785491"]
	    )
	    @libro2 = Bibliografia::Referencia.new(
        ["Dave Thomas"], 
        "Pro Git 2009th Edition",
        "Pro",
	      "Apress",
	      "2009 edition" ,
	      "August 27, 2009",
	      ["968-1430218333", "1430218339"]
	    )  
	   @articulo_libro = Bibliografia::Articulo_libro.new(
        ["Dave Thomas", "Andy Hunt", "Chad Fowler"], 
        "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide",
        "(The Facets of Ruby)",
	      "Pragmatic Bookshelf",
	      "4 edition",
	      "(July 7, 2012)",
	      ["968-1937785499", "1937785491"],
	      "Londres",
	      "Inglés"
	    )
	    @articulo_revista = Bibliografia::Articulo_revista.new(
        ["David Chelimsky", "Dave Astels", " Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy"], 
        "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends",
        "",
	      "",
	      "",
	      "December 25, 2010",
	      [""],
	      "El Hola",
	      "España",
	      "Español"
	    )
	    @articulo_periodico = Bibliografia::Articulo_periodico.new(
        ["Richard E. Silverman"], 
        "Git Pocket Guide",
        "",
	      "",
	      "",
	      "August 2, 2013",
	      [""],
	      "Diario de Avisos",
	      "120"
	    )
	     @documento_electronico = Bibliografia::Documento_electronico.new(
        ["Richard E. Silverman"], 
        "Git Pocket Guide",
        "",
	      "",
	      "1 edition" ,
	      "August 2, 2013",
	      [""],
	      "Internet",
	      "Italia",
	      "https://www.oreillymedia.es"
	    )
	    @lista1 = Bibliografia::Lista_enlazada.new
	    @lista2 = Bibliografia::Lista_enlazada.new
	    @lista1.insertar_lista_final(@libro1)
	    @lista1.insertar_lista_final(@libro2)
	    @lista2.insertar_lista_final(@libro1)
	    @lista2.insertar_lista_final(@articulo_libro)
	  end 
	  
	  it "Debe ordenarse de manera que aparezca primero el libro que tiene un solo autor" do
	    expect(@lista1.sort).to eq([@libro2,@libro1])
	  end
	 
	  it "Debe ordenarse de menor a mayor año al ser los mismos autores" do
	    expect(@lista2.sort).to eq([@articulo_libro,@libro1])
	  end
	 
	 
	
	 
		
		
  end # context
  
end