require 'rspec' 
require 'spec_helper'
require_relative '../model/misil'

describe 'Misil' do

  it 'deberia crear un misil con 10 unidades de vida y 30 unidades de masa' do
    
    vida_esperada = 10
    masa_esperada = 30
    misil = Misil.new(vida_esperada, masa_esperada) 
    
    vida_obtenida = misil.vida
    masa_obtenida = misil.masa    

    expect(vida_esperada).to eq vida_obtenida
    expect(masa_esperada).to eq masa_obtenida
  end

end
