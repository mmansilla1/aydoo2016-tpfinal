class EfectoDisminuirMasa

  def initialize(porcentaje_disminucion)

    @porcentaje_de_disminucion = porcentaje_de_disminucion
  end

  def afectar_objeto(objeto_espacial_que_choca, objeto_espacial_chocado)

    unidades_de_masa = (objeto_espacial_chocado.masa * @porcentaje_de_disminucion / 100)
    objeto_espacial_que_choca.masa -= unidades_de_masa
  end

end
