# frozen_string_literal: true

module Circulos
  class Punto
    # todas las clases son parametrizables
    def initialize (x, y)
      @x=x
      @y=y
    end
    attr_reader :x, :y
    attr_writer :x, :y

  end
end

