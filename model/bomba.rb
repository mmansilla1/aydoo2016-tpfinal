require_relative '../model/objeto_espacial'
require_relative '../model/efecto_destructivo'
require_relative '../model/efecto_destructivo_por_porcentaje'

class Bomba < ObjetoEspacial

  def initialize(vida, masa)     
    
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new
    @choques_posibles[Nave] = EfectoDestructivo.new(100)
    @choques_posibles[Misil] = EfectoDestructivoPorPorcentaje.new(50)
    @choques_posibles[Bomba] = EfectoDestructivo.new(100)
    @choques_posibles[Asteroide] = EfectoDestructivoPorPorcentaje.new(100)
    @choques_posibles[Estrella] = EfectoDestructivo.new(100)
  end
end
