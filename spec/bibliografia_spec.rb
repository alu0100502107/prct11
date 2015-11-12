require 'spec_helper'

describe Bibliografia do
  context "Bibliografia" do
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
	    @libro3 = Bibliografia::Referencia.new(
        ["David Flanagan", "Yukihiro Matsumoto"], 
        "The Ruby Programming Language",
        "Serie",
	      "O’Reilly Media",
	      "1 edition" ,
	      "February 4, 2008",
	      ["0596516177", "978-0596516178"]
	    )    
	    @libro4 = Bibliografia::Referencia.new(
        ["David Chelimsky", "Dave Astels", " Bryan Helmkamp", "Dan North", "Zach Dennis", "Aslak Hellesoy"], 
        "The RSpec Book: Behaviour Driven Development with RSpec, Cucumber, and Friends",
        "The Facets of Ruby",
	      "Pragmatic Bookshelf",
	      "1 edition" ,
	      "December 25, 2010",
	      ["1934356379", "978-1934356371"]
	    )
	    @libro5 = Bibliografia::Referencia.new(
        ["Richard E. Silverman"], 
        "Git Pocket Guide",
        "Serie",
	      "O’Reilly Media",
	      "1 edition" ,
	      "August 2, 2013",
	      ["1449325866", "978-1449325862"]
	    )
    end
   
    it "Deben de existir uno o más autores" do
      expect(@libro1.autores).not_to be_empty 
    end
   
    it "Debe de existir un título" do
      expect(@libro1.titulo).not_to be_nil
    end
   
    it "Debe de existir una serie" do
      expect(@libro1.serie).not_to be_nil
    end
   
    it "Debe existir una editorial" do
      expect(@libro1.editorial).not_to be_nil
    end

    it "Debe existir un número de edición" do
      expect(@libro1.num_edicion).not_to be_nil
    end
   
    it "Debe existir una fecha de publicación" do
      expect(@libro1.fecha_publicacion).not_to be_nil
    end
   
    it "Debe existir uno o más números ISBN" do
      expect(@libro1.num_isbns).not_to be_empty 
    end
   
    it "Debe existir un método para obtener el listado de autores" do
      expect(@libro1.print_autor).to eq("Dave Thomas, Andy Hunt, Chad Fowler")
    end
   
    it "Existe método para obtener el titulo" do
      expect(@libro1.titulo).to eq("Programming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide")
    end
  
    it "Existe un método para obtener la serie" do
      expect(@libro1.serie).to eq("(The Facets of Ruby)") 
    end
   
    it "Existe un método que devuelve la editorial" do
      expect(@libro1.editorial).to eq("Pragmatic Bookshelf")     
    end
   
    it "Existe un método para obtener el número de edición" do
      expect(@libro1.num_edicion).to eq("4 edition") 
    end
   
    it "Existe un método para obtener la fecha de publicación" do
      expect(@libro1.fecha_publicacion).to eq("(July 7, 2013)") 
    end
   
    it "Existe un método para obtener el listado ISBN" do
      expect(@libro1.print_isbn).to eq("ISBN-13: 968-1937785499\nISBN-10: 1937785491\n")
    end
   
    it "Existe un método para obtener la referencia formateada" do
      expect(@libro1.to_s).to eq("Dave Thomas, Andy Hunt, Chad Fowler\nProgramming Ruby 1.9 & 2.0: The Pragmatic Programmers' Guide\n(The Facets of Ruby)\nPragmatic Bookshelf; 4 edition (July 7, 2013)\nISBN-13: 968-1937785499\nISBN-10: 1937785491\n")
    end
  end
   
  context "Nodo" do
    before :all do
      @nodo1 = Bibliografia::Nodo.new(@libro1, nil)
      @nodo2 = Bibliografia::Nodo.new(@libro2, nil)
      @nodo3 = Bibliografia::Nodo.new(@libro3, nil)
      @nodo4 = Bibliografia::Nodo.new(@libro4, nil)
      @nodo5 = Bibliografia::Nodo.new(@libro5, nil)
    end
    
    it "Debe existir un nodo de la lista con sus datos y su siguiente" do
      expect(@nodo1.referencia).to eq(@libro1)
      expect(@nodo1.siguiente).to eq(nil)
    end
  end
   
end   
