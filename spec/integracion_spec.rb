require 'rspec' 
require 'spec_helper'
require_relative '../model/nave'
require_relative '../model/asteroide'

describe 'Casos de choque' do

  it '1) Nave con nave: las dos naves disminuyen su vida en 100 unidades' do
    
    nave_que_choca = Nave.new(100, 100) 
    nave_chocada = Nave.new(100, 100) 
    vida_nave_que_choca_esperada = 0
    masa_nave_que_choca_esperada = 100
    vida_nave_chocada_esperada = 0
    masa_nave_chocada_esperada = 100

    nave_que_choca.chocar(nave_chocada)
    
    vida_nave_que_choca_obtenida = nave_que_choca.vida
    masa_nave_que_choca_obtenida = nave_que_choca.masa    
    vida_nave_chocada_obtenida = nave_chocada.vida
    masa_nave_chocada_obtenida = nave_chocada.masa     

    expect(vida_nave_que_choca_obtenida).to eq vida_nave_que_choca_esperada
    expect(masa_nave_que_choca_obtenida).to eq masa_nave_que_choca_esperada
    expect(vida_nave_chocada_obtenida).to eq vida_nave_chocada_esperada
    expect(masa_nave_chocada_obtenida).to eq masa_nave_chocada_esperada    
  end

  it '2) Nave con asteroide: la nave disminuye su masa a 50 unidades y el asteroide la aumenta en 10' do
    
    nave = Nave.new(100, 100) 
    asteroide = Asteroide.new(50, 100) 
    vida_nave_esperada = 100
    masa_nave_esperada = 50
    vida_asteroide_esperada = 50
    masa_asteroide_esperada = 110

    nave.chocar(asteroide)
    
    vida_nave_obtenida = nave.vida
    masa_nave_obtenida = nave.masa    
    vida_asteroide_obtenida = asteroide.vida
    masa_asteroide_obtenida = asteroide.masa    

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_nave_obtenida).to eq masa_nave_esperada
    expect(vida_asteroide_obtenida).to eq vida_asteroide_esperada
    expect(masa_asteroide_obtenida).to eq masa_asteroide_esperada    
  end

  it '3) Nave con misil: la nave disminuye su vida a 20 unidades y el misil a 0' do
    
    nave = Nave.new(100, 100) 
    misil = Misil.new(100, 100) 
    vida_nave_esperada = 20
    masa_nave_esperada = 100
    vida_misil_esperada = 0
    masa_misil_esperada = 100

    nave.chocar(misil)
    
    vida_nave_obtenida = nave.vida
    masa_nave_obtenida = nave.masa    
    vida_misil_obtenida = misil.vida
    masa_misil_obtenida = misil.masa    

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_nave_obtenida).to eq masa_nave_esperada
    expect(vida_misil_obtenida).to eq vida_misil_esperada
    expect(masa_misil_obtenida).to eq masa_misil_esperada    
  end


  it '4) Nave con bomba: la nave disminuye su vida a 50 unidades y el bomba a 0' do
    
    nave = Nave.new(100, 100) 
    bomba = Bomba.new(100, 100) 
    vida_nave_esperada = 50
    masa_nave_esperada = 100
    vida_bomba_esperada = 0
    masa_bomba_esperada = 100

    nave.chocar(bomba)
    
    vida_nave_obtenida = nave.vida
    masa_nave_obtenida = nave.masa    
    vida_bomba_obtenida = bomba.vida
    masa_bomba_obtenida = bomba.masa    

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_nave_obtenida).to eq masa_nave_esperada
    expect(vida_bomba_obtenida).to eq vida_bomba_esperada
    expect(masa_bomba_obtenida).to eq masa_bomba_esperada    
  end

  it '5) Nave con estrella: la nave aumenta su masa a 150 unidades y la estrella la disminuye a 0' do
    
    nave = Nave.new(100, 100) 
    estrella = Estrella.new(50, 100) 
    vida_nave_esperada = 150
    masa_nave_esperada = 100
    vida_estrella_esperada = 0
    masa_estrella_esperada = 100

    nave.chocar(estrella)
    
    vida_nave_obtenida = nave.vida
    masa_nave_obtenida = nave.masa    
    vida_estrella_obtenida = estrella.vida
    masa_estrella_obtenida = estrella.masa    

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_nave_obtenida).to eq masa_nave_esperada
    expect(vida_estrella_obtenida).to eq vida_estrella_esperada
    expect(masa_estrella_obtenida).to eq masa_estrella_esperada    
  end

  it '6) Asteroide con asteroide: Deberia tener efecto nulo para ambos asteroides' do
    
    asteroide_que_choca = Asteroide.new(100, 100) 
    asteroide_chocado = Asteroide.new(100, 100) 
    vida_asteroide_que_choca_esperada = 100
    masa_asteroide_que_choca_esperada = 100
    vida_asteroide_chocado_esperada = 100
    masa_asteroide_chocado_esperada = 100

    asteroide_que_choca.chocar(asteroide_chocado)
    
    vida_asteroide_que_choca_obtenida = asteroide_que_choca.vida
    masa_asteroide_que_choca_obtenida = asteroide_que_choca.masa    
    vida_asteroide_chocado_obtenida = asteroide_chocado.vida
    masa_asteroide_chocado_obtenida = asteroide_chocado.masa     

    expect(vida_asteroide_que_choca_obtenida).to eq vida_asteroide_que_choca_esperada
    expect(masa_asteroide_que_choca_obtenida).to eq masa_asteroide_que_choca_esperada
    expect(vida_asteroide_chocado_obtenida).to eq vida_asteroide_chocado_esperada
    expect(masa_asteroide_chocado_obtenida).to eq masa_asteroide_chocado_esperada    
  end

  it '7) Asteroide con nave: la nave disminuye su masa a 50 unidades y el asteroide la aumenta en 10' do
    
    nave = Nave.new(100, 100) 
    asteroide = Asteroide.new(50, 100) 
    vida_nave_esperada = 100
    masa_nave_esperada = 50
    vida_asteroide_esperada = 50
    masa_asteroide_esperada = 110

    asteroide.chocar(nave)
    
    vida_nave_obtenida = nave.vida
    masa_nave_obtenida = nave.masa    
    vida_asteroide_obtenida = asteroide.vida
    masa_asteroide_obtenida = asteroide.masa    

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_nave_obtenida).to eq masa_nave_esperada
    expect(vida_asteroide_obtenida).to eq vida_asteroide_esperada
    expect(masa_asteroide_obtenida).to eq masa_asteroide_esperada    
  end

  it '8) Asteroide con bomba: la bomba disminuye su vida a 0 unidades y el asteroide no registra efectos' do

    bomba = Bomba.new(100, 100) 
    asteroide = Asteroide.new(100, 100) 
    vida_bomba_esperada = 0
    masa_bomba_esperada = 100
    vida_asteroide_esperada = 100
    masa_asteroide_esperada = 100

    asteroide.chocar(bomba)
    
    vida_bomba_obtenida = bomba.vida
    masa_bomba_obtenida = bomba.masa    
    vida_asteroide_obtenida = asteroide.vida
    masa_asteroide_obtenida = asteroide.masa    

    expect(vida_bomba_obtenida).to eq vida_bomba_esperada
    expect(masa_bomba_obtenida).to eq masa_bomba_esperada
    expect(vida_asteroide_obtenida).to eq vida_asteroide_esperada
    expect(masa_asteroide_obtenida).to eq masa_asteroide_esperada    
  end

  it '9) Asteroide con misil: ni el misil ni el asteroide registran efecto' do
    
    misil = Misil.new(100, 100) 
    asteroide = Asteroide.new(100, 100) 
    vida_misil_esperada = 100
    masa_misil_esperada = 100
    vida_asteroide_esperada = 100
    masa_asteroide_esperada = 100

    asteroide.chocar(misil)
    
    vida_misil_obtenida = misil.vida
    masa_misil_obtenida = misil.masa    
    vida_asteroide_obtenida = asteroide.vida
    masa_asteroide_obtenida = asteroide.masa    

    expect(vida_misil_obtenida).to eq vida_misil_esperada
    expect(masa_misil_obtenida).to eq masa_misil_esperada
    expect(vida_asteroide_obtenida).to eq vida_asteroide_esperada
    expect(masa_asteroide_obtenida).to eq masa_asteroide_esperada    
  end

  it '10) Asteroide con estrella: El asteroide no registra efectos y la estrella disminuye su vida a 0' do
    
    asteroide = Asteroide.new(100, 100) 
    estrella = Estrella.new(100, 100) 
    vida_asteroide_esperada = 100
    masa_asteroide_esperada = 100
    vida_estrella_esperada = 0
    masa_estrella_esperada = 100

    asteroide.chocar(estrella)
    
    vida_asteroide_obtenida = asteroide.vida
    masa_asteroide_obtenida = asteroide.masa    
    vida_estrella_obtenida = estrella.vida
    masa_estrella_obtenida = estrella.masa    

    expect(vida_asteroide_obtenida).to eq vida_asteroide_esperada
    expect(masa_asteroide_obtenida).to eq masa_asteroide_esperada
    expect(vida_estrella_obtenida).to eq vida_estrella_esperada
    expect(masa_estrella_obtenida).to eq masa_estrella_esperada    
  end

  it '11) Misil con nave: la nave disminuye su vida a 20 unidades y el misil a 0' do
    
    nave = Nave.new(100, 100) 
    misil = Misil.new(100, 100) 
    vida_nave_esperada = 20
    masa_nave_esperada = 100
    vida_misil_esperada = 0
    masa_misil_esperada = 100

    misil.chocar(nave)
    
    vida_nave_obtenida = nave.vida
    masa_nave_obtenida = nave.masa    
    vida_misil_obtenida = misil.vida
    masa_misil_obtenida = misil.masa    

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_nave_obtenida).to eq masa_nave_esperada
    expect(vida_misil_obtenida).to eq vida_misil_esperada
    expect(masa_misil_obtenida).to eq masa_misil_esperada    
  end

  it '12) Misil con misil: los dos misiles disminuyen su vida en 100 unidades' do

    misil_que_choca = Misil.new(100, 100) 
    misil_chocado = Misil.new(100, 100) 
    vida_misil_que_choca_esperada = 0
    masa_misil_que_choca_esperada = 100
    vida_misil_chocado_esperada = 0
    masa_misil_chocado_esperada = 100

    misil_que_choca.chocar(misil_chocado)
    
    vida_misil_que_choca_obtenida = misil_que_choca.vida
    masa_misil_que_choca_obtenida = misil_que_choca.masa    
    vida_misil_chocado_obtenida = misil_chocado.vida
    masa_misil_chocado_obtenida = misil_chocado.masa     

    expect(vida_misil_que_choca_obtenida).to eq vida_misil_que_choca_esperada
    expect(masa_misil_que_choca_obtenida).to eq masa_misil_que_choca_esperada
    expect(vida_misil_chocado_obtenida).to eq vida_misil_chocado_esperada
    expect(masa_misil_chocado_obtenida).to eq masa_misil_chocado_esperada    
  end

  it '13) Misil con bomba: el misil no registra efectos y la bomba disminuye su vida a 50 unidades' do
    
    misil = Misil.new(100, 100) 
    bomba = Bomba.new(100, 100) 
    vida_misil_esperada = 100
    masa_misil_esperada = 100
    vida_bomba_esperada = 50
    masa_bomba_esperada = 100

    misil.chocar(bomba)
    
    vida_misil_obtenida = misil.vida
    masa_misil_obtenida = misil.masa    
    vida_bomba_obtenida = bomba.vida
    masa_bomba_obtenida = bomba.masa    

    expect(vida_misil_obtenida).to eq vida_misil_esperada
    expect(masa_misil_obtenida).to eq masa_misil_esperada
    expect(vida_bomba_obtenida).to eq vida_bomba_esperada
    expect(masa_bomba_obtenida).to eq masa_bomba_esperada    
  end  

  it '14) Misil con asteroide: ni el misil ni el asteroide registran efectos' do

    misil = Misil.new(100, 100) 
    asteroide = Asteroide.new(100, 100) 
    vida_misil_esperada = 100
    masa_misil_esperada = 100
    vida_asteroide_esperada = 100
    masa_asteroide_esperada = 100

    misil.chocar(asteroide)
    
    vida_misil_obtenida = misil.vida
    masa_misil_obtenida = misil.masa    
    vida_asteroide_obtenida = asteroide.vida
    masa_asteroide_obtenida = asteroide.masa    

    expect(vida_misil_obtenida).to eq vida_misil_esperada
    expect(masa_misil_obtenida).to eq masa_misil_esperada
    expect(vida_asteroide_obtenida).to eq vida_asteroide_esperada
    expect(masa_asteroide_obtenida).to eq masa_asteroide_esperada    
  end

  it '15) Misil con estrella: ni el misil ni la estrella registran efecto' do

    misil = Misil.new(100, 100) 
    estrella = Estrella.new(100, 100) 
    vida_misil_esperada = 100
    masa_misil_esperada = 100
    vida_estrella_esperada = 100
    masa_estrella_esperada = 100

    misil.chocar(estrella)
    
    vida_misil_obtenida = misil.vida
    masa_misil_obtenida = misil.masa    
    vida_estrella_obtenida = estrella.vida
    masa_estrella_obtenida = estrella.masa    

    expect(vida_misil_obtenida).to eq vida_misil_esperada
    expect(masa_misil_obtenida).to eq masa_misil_esperada
    expect(vida_estrella_obtenida).to eq vida_estrella_esperada
    expect(masa_estrella_obtenida).to eq masa_estrella_esperada    
  end

  it '16) Bomba con nave: la nave disminuye su vida a 50 unidades y el bomba a 0' do

    nave = Nave.new(100, 100) 
    bomba = Bomba.new(100, 100) 
    vida_nave_esperada = 50
    masa_nave_esperada = 100
    vida_bomba_esperada = 0
    masa_bomba_esperada = 100

    bomba.chocar(nave)
    
    vida_nave_obtenida = nave.vida
    masa_nave_obtenida = nave.masa    
    vida_bomba_obtenida = bomba.vida
    masa_bomba_obtenida = bomba.masa    

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_nave_obtenida).to eq masa_nave_esperada
    expect(vida_bomba_obtenida).to eq vida_bomba_esperada
    expect(masa_bomba_obtenida).to eq masa_bomba_esperada    
  end

  it '17) Bomba con bomba: la dos bombas disminuyen su vida en 100 unidades' do
    
    bomba_que_choca = Bomba.new(100, 100) 
    bomba_chocada = Bomba.new(100, 100) 
    vida_bomba_que_choca_esperada = 0
    masa_bomba_que_choca_esperada = 100
    vida_bomba_chocada_esperada = 0
    masa_bomba_chocada_esperada = 100

    bomba_que_choca.chocar(bomba_chocada)
    
    vida_bomba_que_choca_obtenida = bomba_que_choca.vida
    masa_bomba_que_choca_obtenida = bomba_que_choca.masa    
    vida_bomba_chocada_obtenida = bomba_chocada.vida
    masa_bomba_chocada_obtenida = bomba_chocada.masa     

    expect(vida_bomba_que_choca_obtenida).to eq vida_bomba_que_choca_esperada
    expect(masa_bomba_que_choca_obtenida).to eq masa_bomba_que_choca_esperada
    expect(vida_bomba_chocada_obtenida).to eq vida_bomba_chocada_esperada
    expect(masa_bomba_chocada_obtenida).to eq masa_bomba_chocada_esperada    
  end

  it '18) Bomba con misil: el misil no registra efectos y la bomba la disminuye su vida a 50 unidades' do
    
    misil = Misil.new(100, 100) 
    bomba = Bomba.new(100, 100) 
    vida_misil_esperada = 100
    masa_misil_esperada = 100
    vida_bomba_esperada = 50
    masa_bomba_esperada = 100

    bomba.chocar(misil)
    
    vida_misil_obtenida = misil.vida
    masa_misil_obtenida = misil.masa    
    vida_bomba_obtenida = bomba.vida
    masa_bomba_obtenida = bomba.masa    

    expect(vida_misil_obtenida).to eq vida_misil_esperada
    expect(masa_misil_obtenida).to eq masa_misil_esperada
    expect(vida_bomba_obtenida).to eq vida_bomba_esperada
    expect(masa_bomba_obtenida).to eq masa_bomba_esperada    
  end

  it '19) Bomba con asteroide: la bomba disminuye su vida a 0 unidades y el asteroide no registra efectos' do
    
    bomba = Bomba.new(100, 100) 
    asteroide = Asteroide.new(100, 100) 
    vida_bomba_esperada = 0
    masa_bomba_esperada = 100
    vida_asteroide_esperada = 100
    masa_asteroide_esperada = 100

    bomba.chocar(asteroide)
    
    vida_bomba_obtenida = bomba.vida
    masa_bomba_obtenida = bomba.masa    
    vida_asteroide_obtenida = asteroide.vida
    masa_asteroide_obtenida = asteroide.masa    

    expect(vida_bomba_obtenida).to eq vida_bomba_esperada
    expect(masa_bomba_obtenida).to eq masa_bomba_esperada
    expect(vida_asteroide_obtenida).to eq vida_asteroide_esperada
    expect(masa_asteroide_obtenida).to eq masa_asteroide_esperada    
  end

  it '20) Bomba con estrella: Tanto la bomba como la estrella disminuyen su vida a 0 unidades' do
    
    bomba = Bomba.new(100, 100) 
    estrella = Estrella.new(100, 100) 
    vida_bomba_esperada = 0
    masa_bomba_esperada = 100
    vida_estrella_esperada = 0
    masa_estrella_esperada = 100

    bomba.chocar(estrella)
    
    vida_bomba_obtenida = bomba.vida
    masa_bomba_obtenida = bomba.masa    
    vida_estrella_obtenida = estrella.vida
    masa_estrella_obtenida = estrella.masa    

    expect(vida_bomba_obtenida).to eq vida_bomba_esperada
    expect(masa_bomba_obtenida).to eq masa_bomba_esperada
    expect(vida_estrella_obtenida).to eq vida_estrella_esperada
    expect(masa_estrella_obtenida).to eq masa_estrella_esperada    
  end

  it '21) Estrella con nave: la nave aumenta su masa a 150 unidades y la estrella la disminuye a 0' do
    
    nave = Nave.new(100, 100) 
    estrella = Estrella.new(50, 100) 
    vida_nave_esperada = 150
    masa_nave_esperada = 100
    vida_estrella_esperada = 0
    masa_estrella_esperada = 100

    estrella.chocar(nave)
    
    vida_nave_obtenida = nave.vida
    masa_nave_obtenida = nave.masa    
    vida_estrella_obtenida = estrella.vida
    masa_estrella_obtenida = estrella.masa    

    expect(vida_nave_obtenida).to eq vida_nave_esperada
    expect(masa_nave_obtenida).to eq masa_nave_esperada
    expect(vida_estrella_obtenida).to eq vida_estrella_esperada
    expect(masa_estrella_obtenida).to eq masa_estrella_esperada    
  end

  it '22) Estrella con estrella: Deberian las dos estrellas disminuir su vida a 0' do
    
    estrella_que_choca = Estrella.new(100, 100) 
    estrella_chocada = Estrella.new(100, 100) 
    vida_estrella_que_choca_esperada = 0
    masa_estrella_que_choca_esperada = 100
    vida_estrella_chocada_esperada = 0
    masa_estrella_chocada_esperada = 100

    estrella_que_choca.chocar(estrella_chocada)
    
    vida_estrella_que_choca_obtenida = estrella_que_choca.vida
    masa_estrella_que_choca_obtenida = estrella_que_choca.masa    
    vida_estrella_chocada_obtenida = estrella_chocada.vida
    masa_estrella_chocada_obtenida = estrella_chocada.masa     

    expect(vida_estrella_que_choca_obtenida).to eq vida_estrella_que_choca_esperada
    expect(masa_estrella_que_choca_obtenida).to eq masa_estrella_que_choca_esperada
    expect(vida_estrella_chocada_obtenida).to eq vida_estrella_chocada_esperada
    expect(masa_estrella_chocada_obtenida).to eq masa_estrella_chocada_esperada    
  end

 it '23) Estrella con asteroide: Deberia el asteroide no registrar efectos y la estrella disminuir su vida a 0' do
    
    asteroide = Asteroide.new(100, 100) 
    estrella = Estrella.new(100, 100) 
    vida_asteroide_esperada = 100
    masa_asteroide_esperada = 100
    vida_estrella_esperada = 0
    masa_estrella_esperada = 100

    estrella.chocar(asteroide)
    
    vida_asteroide_obtenida = asteroide.vida
    masa_asteroide_obtenida = asteroide.masa    
    vida_estrella_obtenida = estrella.vida
    masa_estrella_obtenida = estrella.masa    

    expect(vida_asteroide_obtenida).to eq vida_asteroide_esperada
    expect(masa_asteroide_obtenida).to eq masa_asteroide_esperada
    expect(vida_estrella_obtenida).to eq vida_estrella_esperada
    expect(masa_estrella_obtenida).to eq masa_estrella_esperada    
  end

  it '24) Estrella con misil: ni la estrella ni el misil registran efectos' do
    
    misil = Misil.new(100, 100) 
    estrella = Estrella.new(100, 100) 
    vida_misil_esperada = 100
    masa_misil_esperada = 100
    vida_estrella_esperada = 100
    masa_estrella_esperada = 100

    estrella.chocar(misil)
    
    vida_misil_obtenida = misil.vida
    masa_misil_obtenida = misil.masa    
    vida_estrella_obtenida = estrella.vida
    masa_estrella_obtenida = estrella.masa    

    expect(vida_misil_obtenida).to eq vida_misil_esperada
    expect(masa_misil_obtenida).to eq masa_misil_esperada
    expect(vida_estrella_obtenida).to eq vida_estrella_esperada
    expect(masa_estrella_obtenida).to eq masa_estrella_esperada    
  end

  it '25) Estrella con bomba: tanto la bomba como la estrella disminuyen su vida a 0 unidades' do

    bomba = Bomba.new(100, 100) 
    estrella = Estrella.new(100, 100) 
    vida_bomba_esperada = 0
    masa_bomba_esperada = 100
    vida_estrella_esperada = 0
    masa_estrella_esperada = 100

    estrella.chocar(bomba)
    
    vida_bomba_obtenida = bomba.vida
    masa_bomba_obtenida = bomba.masa    
    vida_estrella_obtenida = estrella.vida
    masa_estrella_obtenida = estrella.masa    

    expect(vida_bomba_obtenida).to eq vida_bomba_esperada
    expect(masa_bomba_obtenida).to eq masa_bomba_esperada
    expect(vida_estrella_obtenida).to eq vida_estrella_esperada
    expect(masa_estrella_obtenida).to eq masa_estrella_esperada    
  end

end
