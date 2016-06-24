require_relative '../model/efecto_de_aumentar_masa'

class Asteroide 

  attr_accessor :vida, :masa

  @vida
  @masa
  @choques_posibles

  def initialize(vida, masa)     
    @vida = vida    
    @masa = masa
    @choques_posibles = Hash.new
    @choques_posibles[Nave] = EfectoAumentarMasa.new(10)
  end

  def chocar(objeto_espacial)

    @choques_posibles[objeto_espacial.class].afectar_objeto(self, objeto_espacial)
  end

end
