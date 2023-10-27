# frozen_string_literal: true
require_relative 'circulo'
require_relative 'puja'

module Circulos
  class Cuadro
    def initialize(titulo)
      @titulo = titulo
      @circulos = []
      @pujas = []

    end


    def add_circulo (radio, x, y)
      cir = Circulo.new_parametros(radio, x, y)
      @circulos << cir #introducir el circulo al array de ciculos
      #circulos.push(cir)
    end

    # conceptualmente, esta opción también es correcta, porque no añadimos el
    # círuclo al array, sino que se añade una COPIA del círuclo
    #
    # def add_circulo (circulo)
    #   cir = Circulo.new(cir.radio, cir.z, cir.y)
    #   @circulo << cir
    # end

    def add_puja(puja)
      @pujas << puja
    end

    def ganador_subasta
      max=0
      ganador=nil

      for puja in @pujas
        if (puja.precio>max)
          mayor_puja = puja.precio
          ganador=puja.comprador
        end
      end

      ganador
    end

  end

end
