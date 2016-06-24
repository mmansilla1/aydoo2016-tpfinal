require_relative '../model/efecto_de_disminuir_masa'

class Nave

  attr_accessor :vida, :masa

  @vida
  @masa
  @choques_posibles

  def initialize(vida, masa)     
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new
    @choques_posibles[Asteroide] = EfectoDisminuirMasa.new(50)
  end

  def chocar(objeto_espacial)

    @choques_posibles[objeto_espacial.class].afectar_objeto(self, objeto_espacial)
  end

end
