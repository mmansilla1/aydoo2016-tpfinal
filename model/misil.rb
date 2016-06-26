require_relative '../model/objeto_espacial'
require_relative '../model/efecto_disminuir_vida'
require_relative '../model/efecto_disminuir_vida_por_porcentaje'
require_relative '../model/efecto_nulo'

class Misil < ObjetoEspacial

  def initialize(vida, masa)     
    
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new
    @choques_posibles[Nave] = EfectoDisminuirVida.new(100)
    @choques_posibles[Misil] = EfectoDisminuirVida.new(100)
    @choques_posibles[Bomba] = EfectoNulo.new()
    @choques_posibles[Asteroide] = EfectoNulo.new()
    @choques_posibles[Estrella] = EfectoNulo.new()
  end
end
