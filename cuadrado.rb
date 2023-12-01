# frozen_string_literal: true

module Circulos
  require_relative 'figura'
  class Cuadrado < Figura
    public_class_method :new

    def initialize (lado, x, y)
      super(0)
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

    def perimetro
      @lado*4
    end
  end
end
