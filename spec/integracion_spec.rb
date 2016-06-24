require 'rspec' 
require_relative '../model/nave'
require_relative '../model/asteroide'

describe 'Tipos de choque' do

  it 'Nave con asteroide: la nave disminuye su masa a 50 unidades y el asteroide la aumenta en 10' do
    
    vida_nave = 100
    masa_nave = 100
    nave = Nave.new(vida_nave, masa_nave) 
    vida_asteroide = 50
    masa_asteroide = 100
    asteroide = Asteroide.new(vida_asteroide, masa_asteroide) 
    vida_nave_esperada = 100
    masa_nave_esperada = 50
    vida_asteroide_esperada = 50
    masa_asteroide_esperada = 110

    nave.chocar(asteroide)
    
    vida_nave_obtenida = nave.vida
    masa_naveObtenida = nave.masa    
    vida_asteroide_obtenida = asteroide.vida
    masa_asteroide_obtenida = asteroide.masa 

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_naveObtenida).to eq masa_nave_esperada
    expect(vida_asteroide_obtenida).to eq vida_asteroide_esperada
    expect(masa_asteroide_obtenida).to eq masa_asteroide_esperada  

  end

  it 'Asteroide con nave: la nave disminuye su masa a 50 unidades y el asteroide la aumenta en 10' do
    
    vida_nave = 100
    masa_nave = 100
    nave = Nave.new(vida_nave, masa_nave) 
    vida_asteroide = 50
    masa_asteroide = 100
    asteroide = Asteroide.new(vida_asteroide, masa_asteroide) 
    vida_nave_esperada = 100
    masa_nave_esperada = 50
    vida_asteroide_esperada = 50
    masa_asteroide_esperada = 110

    asteroide.chocar(nave)
    
    vidaNaveObtenida = nave.vida
    masaNaveObtenida = nave.masa    
    vidaAsteroideObtenida = asteroide.vida
    masaAsteroideObtenida = asteroide.masa    

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_naveObtenida).to eq masa_nave_esperada
    expect(vida_asteroide_obtenida).to eq vida_asteroide_esperada
    expect(masa_asteroide_obtenida).to eq masa_asteroide_esperada 
   
  end

end
