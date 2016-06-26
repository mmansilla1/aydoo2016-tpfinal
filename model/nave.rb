require_relative '../model/objeto_espacial'
require_relative '../model/efecto_disminuir_masa'
require_relative '../model/efecto_disminuir_vida'
require_relative '../model/efecto_aumentar_vida' 

class Nave < ObjetoEspacial

  def initialize(vida, masa)     
    
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new
    @choques_posibles[Nave] = EfectoDisminuirVida.new(100)
    @choques_posibles[Misil] = EfectoDisminuirVida.new(80)
    @choques_posibles[Bomba] = EfectoDisminuirVida.new(50)
    @choques_posibles[Asteroide] = EfectoDisminuirMasa.new(50)
    @choques_posibles[Estrella] = EfectoAumentarVida.new()
  end
end
