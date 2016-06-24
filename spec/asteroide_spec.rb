require 'rspec' 
require_relative '../model/objeto_espacial'
require_relative '../model/asteroide'

describe 'Asteroide' do

  it 'debe crear un asteroide con 50 unidades de vida y 100 unidades de masa' do
    
    vida_esperada = 50
    masa_esperada = 100
    asteroide = Asteroide.new(vida_esperada, masa_esperada) 
    
    vida_obtenida = asteroide.vida
    masa_obtenida = asteroide.masa    

    expect(vida_esperada).to eq vida_obtenida
    expect(masa_esperada).to eq masa_obtenida
  end

end
