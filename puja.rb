# frozen_string_literal: true


module Circulos
  class Puja

    def initialize (precio, cuadro, comprador)
      @cuadro=cuadro
      @comprador=comprador
      @precio=precio
    end

    attr_reader :comprador, :cuadro, :precio

  end

end
