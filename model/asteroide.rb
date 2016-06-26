require_relative '../model/objeto_espacial'
require_relative '../model/efecto_aumentar_masa'
require_relative '../model/efecto_nulo'

class Asteroide < ObjetoEspacial

  def initialize(vida, masa)     
    
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new 
    @choques_posibles[Nave] = EfectoAumentarMasa.new(10)
    @choques_posibles[Misil] = EfectoNulo.new()
    @choques_posibles[Bomba] = EfectoNulo.new()
    @choques_posibles[Asteroide] = EfectoNulo.new()
    @choques_posibles[Estrella] = EfectoNulo.new()
  end
end
