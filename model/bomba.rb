require_relative '../model/objeto_espacial'
require_relative '../model/efecto_disminuir_vida'
require_relative '../model/efecto_disminuir_vida_por_porcentaje'

class Bomba < ObjetoEspacial

  def initialize(vida, masa)     
    
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new
    @choques_posibles[Nave] = EfectoDisminuirVida.new(100)
    @choques_posibles[Misil] = EfectoDisminuirVidaPorPorcentaje.new(50)
    @choques_posibles[Bomba] = EfectoDisminuirVida.new(100)
    @choques_posibles[Asteroide] = EfectoDisminuirVidaPorPorcentaje.new(100)
    @choques_posibles[Estrella] = EfectoDisminuirVida.new(100)
  end
end
