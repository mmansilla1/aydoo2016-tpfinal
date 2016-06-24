class EfectoAumentarMasa

  def initialize(porcentaje_de_aumento)

    @porcentaje_de_aumento = porcentaje_de_aumento
  end

  def afectar_objeto(objeto_espacial_que_choca, objeto_espacial_chocado)
    unidades_de_Masa = (objeto_espacial_chocado.masa * @porcentaje_de_aumento / 100)
    objeto_espacial_que_choca.masa += unidades_de_Masa
  end

end
