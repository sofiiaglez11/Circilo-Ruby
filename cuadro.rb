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
  end

end
