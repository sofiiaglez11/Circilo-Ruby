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


    def mejorar_puja (cuadro, cantidad)

      max=0

    for puja in @pujas    #1.1 y loop
      cuadroPuja = puja.cuadro       #1.2
      precioPuja = puja.precio;      #1.3

      if (cuadro==cuadroPuja && precioPuja > max)
        max=precioPuja
      end
    end

      if (max>0)  #1.4
        self.pujar(cuadro, cantidad+max);
      end

    end



  end

end
