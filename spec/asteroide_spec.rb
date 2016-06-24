require 'rspec' 
require_relative '../model/asteroide'

describe 'Asteroide' do

  it 'deberia crear un asteroide con 50 unidades de vida y 100 unidades de masa' do
    
    vida_esperada = 50
    masa_esperada = 100
    asteroide = Asteroide.new(vida_esperada, masa_esperada) 
    
    vida_obtenida = asteroide.vida
    masa_obtenida = asteroide.masa    

    expect(vida_obtenida).to eq vida_esperada
    expect(masa_obtenida).to eq masa_esperada
  end

end
