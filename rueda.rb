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

  end
end

