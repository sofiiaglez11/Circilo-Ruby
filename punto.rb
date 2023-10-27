# frozen_string_literal: true

module Circulos
  class Punto
    def initialize (x, y)
      @x=x
      @y=y
    end
    attr_reader :x, :y
    attr_writer :x, :y

  end
end

