# frozen_string_literal: true

module Circulos
  class Cuadrado

    def initialize (lado, x, y)
      @lado = lado
      @x = x
      @y = y
    end

    attr_reader :lado
    attr_reader :x
    attr_reader :y

    def to_s
      " lado: " + @lado.to_s + " y centro: " + @x.to_s + ", " + @y.to_s
    end

  end
end
