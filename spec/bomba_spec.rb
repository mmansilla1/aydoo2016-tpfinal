require 'rspec' 
require 'spec_helper'
require_relative '../model/bomba'

describe 'Bomba' do

  it 'deberia crear una bomba con 200 unidades de vida y 90 unidades de masa' do
    
    vida_esperada = 200
    masa_esperada = 90
    bomba = Bomba.new(vida_esperada, masa_esperada) 
    
    vida_obtenida = bomba.vida
    masa_obtenida = bomba.masa    

    expect(vida_esperada).to eq vida_obtenida
    expect(masa_esperada).to eq masa_obtenida
  end

end
