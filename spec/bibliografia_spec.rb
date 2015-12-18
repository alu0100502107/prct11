require 'spec_helper'

describe Bibliografia do
  context "Lenguajes de Dominio Específico" do
    context "Libro" do
      libro = Bibliografia::Libro.new("Acuérdate de mí") do
        autor "Mary Higgins Clark" 
        fecha_publicacion "1994"
        num_edicion "Cuarta"
        volumen "1"
        lugar_publicacion"Estados Unidos"
        editorial "Simon & Schuster"
        num_isbn "37785491"
      end
     
      it "Debe existir el libro con título" do
        expect(libro.titulo).to eq("Acuérdate de mí")
      end
      
      it "Debe existir el libro con autor" do
        expect(libro.autores).to eq(["Mary Higgins Clark"])
      end
      
      it "Debe existir el libro con fecha de publicación" do
        expect(libro.fechas_publicacion).to eq(["1994"])
      end
        
      it "Debe existir el libro con edición" do  
        expect(libro.num_ediciones).to eq(["Cuarta"])
      end
      
      it "Debe existir el libro con volumen" do
        expect(libro.volumenes).to eq(["1"])
      end
      
      it "Debe existir el libro con lugar de publicación" do
        expect(libro.lugares_publicacion).to eq(["Estados Unidos"])
      end
      
      it "Debe existir el libro con editorial" do
        expect(libro.editoriales).to eq(["Simon & Schuster"])
      end
      
      it "Debe existir el libro con numéro de isbn" do
        expect(libro.num_isbns).to eq(["37785491"])
      end
    
      it "Debe crearse un libro con lenguaje de dominio específico" do
        expect(libro.kind_of?Bibliografia::Libro).to eq(true)
      end
      
      it "Debe mostrarse el libro" do
        puts libro
      end
    end # context Libro
  end # context Lenguajes de Dominio Específico"
end # describe Bibliografia

