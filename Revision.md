 

*Observacion 1: Herencia
El uso de herencia me parece una restricción muy fuerte, restringiendo su reuso al no poder heredear de mas de una clase padre. La clase ObjetoEspacial que podría ser fácilmente reemplazado por un mixin.

Respuesta: Aceptada. Pero a mi consideración todos los objetos cumplen con la condición de "ES UN".
En el caso de que se quiera agregar otro objeto, existen los métodos de agregar_choque_posible y eliminar_choque_posible

*Observacion 2: Ruby
a)
attr_accessor :vida, :masa, :choques_posibles
Con los attr no te haria falta definir las variables @masa, @vida , etc en la clase ObjetoEspacial

b)
Los test en integracion_spec me resulta dificil de seguir al declarar tantas variables de inicializacion y resultado.


	it '1) Nave con nave: las dos naves disminuyen su vida en 100 unidades' do
    
    vida_nave = 100
    masa_nave = 100
    nave_que_choca = Nave.new(vida_nave, masa_nave) 
    nave_chocada = Nave.new(vida_nave, masa_nave) 
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

Respuesta: Aceptada. a)Se hace un refactor para cumplir con la convención de Ruby. 
b) Se eliminan lineas de código que son redundantes en la creacion de los objetos de prueba.
