require 'spec_helper'

describe Bibliografia do
  context "Bibliografia" do 
    before :all do
      @libro = Bibliografia::Referencia.new(
        ["Dave Thomas", "Andy Hunt", "Chad Fowler"], 
        "Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide",
        "(The Facets of Ruby)",
	      "Pragmatic Bookshelf",
	      "4 edition",
	      "(July 7, 2013)",
	      ["968-1937785499", "1937785491"]
	    )
    end
    
    it "Deben de existir uno o más autores" do
      expect(@libro.autores).not_to be_empty 
    end
   
    it "Debe de existir un título" do
      expect(@libro.titulo).not_to be_nil
    end
   
    it "Debe de existir una serie" do
      expect(@libro.serie).not_to be_nil
    end
   
    it "Debe existir una editorial" do
      expect(@libro.editorial).not_to be_nil
    end

    it "Debe existir un número de edición" do
      expect(@libro.num_edicion).not_to be_nil
    end
   
    it "Debe existir una fecha de publicación" do
      expect(@libro.fecha_publicacion).not_to be_nil
    end
   
    it "Debe existir uno o más números ISBN" do
      expect(@libro.num_isbns).not_to be_empty 
    end
   
    it "Debe existir un método para obtener el listado de autores" do
      expect(@libro.print_autor).to eq("Dave Thomas, Andy Hunt, Chad Fowler")
    end
   
    it "Existe método para obtener el titulo" do
      expect(@libro.titulo).to eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide")
    end
  
    it "Existe un método para obtener la serie" do
      expect(@libro.serie).to eq("(The Facets of Ruby)") 
    end
   
    it "Existe un método que devuelve la editorial" do
      expect(@libro.editorial).to eq("Pragmatic Bookshelf")     
    end
   
    it "Existe un método para obtener el número de edición" do
      expect(@libro.num_edicion).to eq("4 edition") 
    end
   
    it "Existe un método para obtener la fecha de publicación" do
      expect(@libro.fecha_publicacion).to eq("(July 7, 2013)") 
    end
   
    it "Existe un método para obtener el listado ISBN" do
      expect(@libro.print_isbn).to eq("ISBN-13: 968-1937785499\nISBN-10: 1937785491\n")
    end
   
    it "Existe un método para obtener la referencia formateada" do
      expect(@libro.to_s).to eq("Dave Thomas, Andy Hunt, Chad Fowler\nProgramming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide\n(The Facets of Ruby)\nPragmatic Bookshelf; 4 edition (July 7, 2013)\nISBN-13: 968-1937785499\nISBN-10: 1937785491\n")
    end
  end
   
  context "Nodo" do
    before :all do
      @nodo = Bibliografia::Nodo.new("n1", "n2", "n3")
    end
    
    it "Debe existir un nodo de la lista con sus datos, su siguiente y su anterior" do
      expect(@nodo.referencia).to eq("n1")
      expect(@nodo.siguiente).to eq("n2")
      expect(@nodo.anterior).to eq("n3")
    end
  end

  context "Lista Enlazada" do
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
        ["Scott Chacon"], 
        "Pro Git 2009th Edition",
        "Pro",
	      "Apress",
	      "2009 edition" ,
	      "August 27, 2009",
	      ["968-1430218333", "1430218339"]
	    ) 
      @lista = Bibliografia::Lista_enlazada.new
    end 
    
    it "Se extrae el primer elemento de la lista" do
      @lista.insertar_lista_principio(@libro1)
      expect(@lista.principio.referencia).to eq(@libro1)
      @lista.extraer_lista_principio
    end
    
    it "Se puede insertar un elemento por el principio" do
      @lista.insertar_lista_principio(@libro1)
      expect(@lista.principio.referencia).to eq(@libro1)
    end
    
    it "Se pueden insertar varios elementos por el principio" do
      @lista.insertar_lista_principio(@libro1)
      expect(@lista.principio.referencia).to eq(@libro1)
      @lista.insertar_lista_principio(@libro2)
      expect(@lista.principio.referencia).to eq(@libro2)
    end
    
    it "Debe existir una lista con su cabeza" do
      @lista.insertar_lista_principio(@libro1)
      expect(@lista.principio.referencia).to eq(@libro1)
    end 
    
    it "Se extrae el último elemento de la lista" do
      @lista.insertar_lista_final(@libro2)
      expect(@lista.final.referencia).to eq(@libro2)
      @lista.extraer_lista_final
    end
    
    it "Se puede insertar un elemento por el final" do
      @lista.insertar_lista_final(@libro2)
      expect(@lista.final.referencia).to eq(@libro2)
    end
    
    it "Se pueden insertar varios elementos por el final" do
      @lista.insertar_lista_final(@libro2)
      expect(@lista.final.referencia).to eq(@libro2)
      @lista.insertar_lista_final(@libro1)
      expect(@lista.final.referencia).to eq(@libro1)
    end
    
    it "Se inserta por el final de la lista y se extrae por el principio de la lista" do
      @lista.insertar_lista_final(@libro2)
      expect(@lista.final.referencia).to eq(@libro2)
      @lista.insertar_lista_principio(@libro1)
      expect(@lista.principio.referencia).to eq(@libro1)
      @lista.extraer_lista_principio.should eq(@libro1)
    end
  end  #context
  
  context "Libro" do
    before :all do
      @libro3 = Bibliografia::Libro.new(
        ["David Flanagan", "Yukihiro Matsumoto"], 
        "The Ruby Programming Language",
        "",
	      "O’Reilly Media",
	      "1 edition" ,
	      "February 4, 2008",
	      ["0596516177", "978-0596516178"]
	    ) 
    end
    
    it "Es un Libro" do
      expect(@libro3).is_a?Bibliografia::Libro
    end
    
    it "Es una Referencia" do
      expect(@libro3).is_a?Bibliografia::Referencia
    end
    
    it "Es una instancia de Libro" do
      expect(@libro3).instance_of?Bibliografia::Libro
    end
  end # context
  
  context "Artículo de Revista" do
    before :all do
      @articulo_revista = Bibliografia::Articulo_revista.new(
        ["David Chelimsky", "Dave Astels", " Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy"], 
        "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends",
        "The Facets of Ruby",
	      "Pragmatic Bookshelf",
	      "1 edition" ,
	      "December 25, 2010",
	      ["1934356379", "978-1934356371"]
	    )
    end
    
    it "Es un artículo de Revista" do
      expect(@articulo_revista).is_a?Bibliografia::Articulo_revista
    end
    
    it "Es una Referencia" do
      expect(@articulo_revista).is_a?Bibliografia::Referencia
    end
    
    it "Es una instancia de Articulo_revista" do
      expect(@articulo_revista).instance_of?Bibliografia::Articulo_revista
    end
  end # context
end