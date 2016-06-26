require_relative '../model/objeto_espacial'
require_relative '../model/efecto_disminuir_masa'
require_relative '../model/efecto_destructivo'
require_relative '../model/efecto_constructivo' 

class Nave < ObjetoEspacial

  def initialize(vida, masa)     
    
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new
    @choques_posibles[Nave] = EfectoDestructivo.new(100)
    @choques_posibles[Misil] = EfectoDestructivo.new(80)
    @choques_posibles[Bomba] = EfectoDestructivo.new(50)
    @choques_posibles[Asteroide] = EfectoDisminuirMasa.new(50)
    @choques_posibles[Estrella] = EfectoConstructivo.new()
  end

end
