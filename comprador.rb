# frozen_string_literal: true

require_relative 'puja'
module Circulos
  class Comprador
    def initialize(nombre)
      @nombre = nombre
      @pujas = Array.new
    end

      def pujar (cua, precio)
        puja = Puja.new(precio, cua, self)
        @pujas << puja
        cua .add_puja(puja)
      end

  end

end
