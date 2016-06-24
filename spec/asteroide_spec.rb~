require 'rspec' 
require_relative '../model/objeto_espacial'
require_relative '../model/asteroide'

describe 'Asteroide' do

  it 'debe crear un asteroide con 50 unidades de vida y 100 unidades de masa' do
    
    vidaEsperada = 50
    masaEsperada = 100
    asteroide = Asteroide.new(vidaEsperada, masaEsperada) 
    
    vidaObtenida = asteroide.vida
    masaObtenida = asteroide.masa    

    expect(vidaEsperada).to eq vidaObtenida
    expect(masaEsperada).to eq masaObtenida
  end

end
