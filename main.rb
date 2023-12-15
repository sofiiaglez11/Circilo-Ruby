#encoding:UTF-8
# frozen_string_literal: true


require_relative 'circulo'
require_relative 'cuadrado'
require_relative 'cuadro'
require_relative 'comprador'
require_relative 'rueda'
require_relative 'figura'
#module Circulos

include Circulos

  class Main
    def main

      c0 = Circulo.new_radio(-3)
      #c0 = Circulos::Circulo.new_radio(-3) -> si no se hace el include del módulo
      # copia literalmente el código del módulo

      puts "el circulo 0 tiene de radio " + c0.radio.to_s

      puts "Hay " + Circulo.cuantos_circulos_hay().to_s + " circulos"

      #c1 = Circulo.new(1, -2,-3)
      c1 = Circulo.new_parametros(1, -2,-3)
      c1.pintar()
      puts "Hay " + Circulo.cuantos_circulos_hay().to_s + " circulos"

      c2 = Circulo.new_parametros(1, -2,-3)
      c2.pintar()

      c3 = c2
      puts "Hay " + Circulo.cuantos_circulos_hay().to_s + " circulos"

      c4 = Circulo.new_default

      puts "Hay " + Circulo.num_circulos().to_s + " circulos"

      puts "El radio del círculo 1 es " + c1.radio.to_s
      c1.radio=-3.0
      puts "El radio del círculo 1 es " + c1.radio.to_s

      c1=c2
      c2.pintar()
      c1.radio=7
      c2.pintar()

      # prueba de dependencia

      n2 =c2.norte

      #prueba de asociacion envolvente
      ce = Circulo.new_parametros(5.0, 0, 0)

      cua = Cuadrado.new(10.0,0,0)  #es una envolvente válida
      #cua = Cuadrado.new(1,0,0)      #envolvente no válida
      ce.envolvente=cua

      puts ce.pintar


      #prueba de composición
      muchos_circulos = Cuadro.new("Muchos Circulos")
      muchos_circulos.add_circulo(4, 0, 0)


      #prueba de clase de asociacion
      yo = Comprador.new("Yo")
      yo.pujar(muchos_circulos,100)
      tu = Comprador.new("tu")
      tu.pujar(muchos_circulos,150) #pujar establece 4 relaciones (entre puja con comprador y cuadro)
      ganador = muchos_circulos.ganador_subasta

      yo.mejorar_puja(muchos_circulos,100)


      muchos_circulos.add_circulo(5,0,0)
      muchos_circulos.add_circulo(3,4,4)
      muchos_circulos.add_circulo(2,-3,-3)

      norte = muchos_circulos.calcular_norte


      # prueba de herencia
      rueda = Rueda.new(5,-1,1,3)

      rueda.area

      # asignacion de polimorfismo
      circulo2 = Circulo.new_default
      rueda2 = Rueda.new(5, 0,0,3)

      rueda3 = circulo2 # no hay declaración de tipos, to do es polimórfico
      circulo3 = rueda2

      # circulo3 = circulo2   #el puntero pasa de apuntar a una rueda a un círculo

      circulo3.area       # área de Rueda
      circulo3=circulo2
      circulo3.area       # área de Ciruculo

      #prueba de clases abstractas
      # fig = Figura.new(0)  es una clase "abstracta", hemos puesto el método new privado para no poder instanciarla
      fig2 = Circulo.new_default
      per=fig2.perimetro
      fig2 = Cuadrado.new(3,1,0)
      per=fig2.perimetro


      #prueba de herencia de clases
      Circulo.cuantos_circulos_hay
      Rueda.cuantos_circulos_hay

      # prueba de ligadura dinámica y métodos de clase
      cc = Rueda.new(5,1.0,1.0,3)

      # da error, no conode ningún método para rueda,
      # no se permite llamar a métodos de clase desde instancias
      # cc.cuantos_circulos_hay



    end
  end
#end

Main.new.main
