require 'rspec' 
require 'spec_helper'
require_relative '../model/objeto_espacial'

describe 'Excepciones' do

  it 'Deberia lanzar excepcion cuando el objeto que choca esta muerto' do
    
    objeto_espacial_que_choca = ObjetoEspacial.new() 
    objeto_espacial_que_chocado = ObjetoEspacial.new() 
    vida = 0
    objeto_espacial_que_choca.vida = vida

    expect{objeto_espacial_que_choca.chocar(objeto_espacial_que_chocado)}.to raise_exception(ObjetoEspacialMuertoException)
  end

end
