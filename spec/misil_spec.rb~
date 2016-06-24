require 'rspec' 
require_relative '../model/objeto_espacial'
require_relative '../model/misil'

describe 'Misil' do

  it 'debe crear un misil con 10 unidades de vida y 30 unidades de masa' do
    
    vidaEsperada = 10
    masaEsperada = 30
    misil = Misil.new(vidaEsperada, masaEsperada) 
    
    vidaObtenida = misil.vida
    masaObtenida = misil.masa    

    expect(vidaEsperada).to eq vidaObtenida
    expect(masaEsperada).to eq masaObtenida
  end

end
