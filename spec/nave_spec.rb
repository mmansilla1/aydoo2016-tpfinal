require 'rspec' 
require_relative '../model/objeto_espacial'
require_relative '../model/nave'

describe 'Nave' do

  it 'debe crear una nave con 100 unidades de vida y 100 unidades de masa' do
    
    vida_esperada = 100
    masa_esperada = 100
    nave = Nave.new(vida_esperada, masa_esperada) 
    
    vida_obtenida = nave.vida
    masa_obtenida = nave.masa    

    expect(vida_esperada).to eq vida_obtenida
    expect(masa_esperada).to eq masa_obtenida
  end

end
