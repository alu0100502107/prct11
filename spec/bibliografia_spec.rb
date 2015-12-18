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
    
    context "Artículo de un libro" do
      articulo_libro = Bibliografia::Articulo_libro.new("Para qué sirve la Teoría de Sistemas en Sociología") do
        autor "Francisco Parra Luna"  
        fecha_publicacion "1981"
        num_edicion "Sexta"
        volumen "15"
        lugar_publicacion "España"
        editorial "Asociación de Editoriales Universitarias"
        num_isbn "2589631470"
        nombre_libro "REIS"
        num_pagina "77-111"
      end
     
      it "Debe existir un artículo de un libro con título" do
        expect(articulo_libro.titulo).to eq("Para qué sirve la Teoría de Sistemas en Sociología")
      end
      
      it "Debe existir un artículo de un libro con autor" do
        expect(articulo_libro.autores).to eq(["Francisco Parra Luna"])
      end
      
      it "Debe existir un artículo de un libro con fecha de publicación" do
        expect(articulo_libro.fechas_publicacion).to eq(["1981"])
      end
        
      it "Debe existir un artículo de un libro con edición" do  
        expect(articulo_libro.num_ediciones).to eq(["Sexta"])
      end
      
      it "Debe existir un artículo de un libro con volumen" do
        expect(articulo_libro.volumenes).to eq(["15"])
      end
      
      it "Debe existir un artículo de un libro con lugar de publicación" do
        expect(articulo_libro.lugares_publicacion).to eq(["España"])
      end
      
      it "Debe existir un artículo de un libro con editorial" do
        expect(articulo_libro.editoriales).to eq(["Asociación de Editoriales Universitarias"])
      end
      
      it "Debe existir un artículo de un libro con numéro de isbn" do
        expect(articulo_libro.num_isbns).to eq(["2589631470"])
      end
      
      it "Debe existir un artículo de un libro con nombre del libro" do
        expect(articulo_libro.nombres_libro).to eq(["REIS"])
      end
      
      it "Debe existir un artículo de un libro con numéro de páginas" do
        expect(articulo_libro.num_paginas).to eq(["77-111"])
      end
    
      it "Debe crearse un artículo de un libro con lenguaje de dominio específico" do
        expect(articulo_libro.kind_of?Bibliografia::Articulo_libro).to eq(true)
      end
      
      it "Debe mostrarse el artículo de un libro" do
        puts articulo_libro
      end
    end # context Articulo de un Libro
  end # context Lenguajes de Dominio Específico
end # describe Bibliografia

