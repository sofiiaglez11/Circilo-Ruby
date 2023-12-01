# frozen_string_literal: true

module Circulos
  class Figura

    def initialize(color)
      @color=color
    end

    #se puede poner el método o no poner nada
    # en ruby no existen las clases abstractas
    # este método no se va a ejecutar nunca
    def perimetro
    end

    private_class_method :new #para decir que la clase no se puede instanciar

  end
end

