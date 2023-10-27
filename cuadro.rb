# frozen_string_literal: true
require_relative 'circulo'

module Circulos
  class Cuadro
    def initialize(titulo)
      @titulo = titulo
      @circulos = []

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

  end

end
