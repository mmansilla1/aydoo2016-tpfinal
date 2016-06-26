require 'rspec' 
require 'spec_helper'
require_relative '../model/objeto_espacial'

describe 'ObjetoEspacial' do

  it 'Deberia crear un objeto espacial con 100 unidades de vida y 100 unidades de masa' do
    
    vida_esperada = 100
    masa_esperada = 100
    
    objeto_espacial = ObjetoEspacial.new() 
    
    vida_obtenida = objeto_espacial.vida
    masa_obtenida = objeto_espacial.masa    
    
    expect(vida_obtenida).to eq vida_esperada
    expect(masa_obtenida).to eq masa_esperada
  end

  it 'No deberia agregar el choque posible nave en los choques posibles' do
    
    cantidad_choques_esperados = 1
    objeto_espacial = ObjetoEspacial.new() 
    objeto_espacial.agregar_choque_posible(Nave, EfectoAumentarMasa.new(10))

    objeto_espacial.agregar_choque_posible(Nave, EfectoAumentarMasa.new(10))    

    cantidad_choques_obtenidos = objeto_espacial.choques_posibles.length
    expect(cantidad_choques_obtenidos).to eq cantidad_choques_esperados
  end

end
