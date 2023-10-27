# frozen_string_literal: true

module Circulos
  class Comprador
    def initialize(nombre)
      @nombre = nombre
      @pujas = Array.new
    end

      def pujar (cua, precio)
        puja = Puja.new(precio, cua, self)
        @pujas << puja
        cua .addPuja(puja)
      end
  end

end
