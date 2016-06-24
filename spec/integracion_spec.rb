require 'rspec' 
require_relative '../model/nave'
require_relative '../model/asteroide'

describe 'Nave choca con Asteroide' do

  it 'la nave disminuye su masa a 50 unidades y el asteroide la aumenta en 10' do
    
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
    masa_nave_obtenida = nave.masa    
    vida_asteroide_obtenida = asteroide.vida
    masa_asteroide_obtenida = asteroide.masa    

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_nave_obtenida).to eq masa_nave_esperada
    #expect(vidaAsteroideObtenida).to eq vidaAsteroideEsperada
    #expect(masaAsteroideObtenida).to eq masaAsteroideEsperada    
    
  end

end
