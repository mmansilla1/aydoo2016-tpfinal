require 'rspec' 
require 'spec_helper'
require_relative '../model/estrella'

describe 'Estrella' do

  it 'deberia crear una estrella con 50 unidades de vida y 10 unidades de masa' do
    
    vida_esperada = 50
    masa_esperada = 10
    estrella = Estrella.new(vida_esperada, masa_esperada) 
    
    vida_obtenida = estrella.vida
    masa_obtenida = estrella.masa    

    expect(vida_esperada).to eq vida_obtenida
    expect(masa_esperada).to eq masa_obtenida
  end

end
