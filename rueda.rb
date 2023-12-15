# frozen_string_literal: true

require_relative 'circulo'
module Circulos
  class Rueda < Circulo

    def initialize(radio, x, y, llanta)
      super(radio, x, y) # si no huebiera parámetros de más (llanta) no haría falta pasarle los parámetros
      @llanta = llanta
    end

    public_class_method :new

    def area
      area_exterior = super
      area_interior = Math::PI*(@radio-@llanta)*(self.radio-@llanta)  # en java, las clases heredadas permiten usar los atributos privados
      area_exterior-area_interior
    end

    # redefinir el método de clase
    def self.cuantos_circulos_hay
      # no se pone super.cuantos_circulos_hay, porque super no es un puntero
      super
      puts "circulos contando las ruedas"

      @@num_circulos
    end

  end
end

