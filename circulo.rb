# frozen_string_literal: true

module Circulos
  require_relative 'punto'
  require_relative 'cuadrado'
  class Circulo
    @@num_circulos = 0
    @@RADIO_DEFECTO=1.0

    def self.cuantos_circulos_hay
      return @@num_circulos
    end

    def initialize (radio, x, y)
      self.radio=radio
      @x = x
      @y = y

      #atributo de referencia
      @envolvente = nil
      @@num_circulos+=1

    end

    def self.new_default
      new(@@RADIO_DEFECTO,0,0)
    end

    def self.new_radio(radio)
      new(radio, 0, 0)
    end

    def self.new_parametros (radio, x, y)
      new(radio,x,y)
    end


    #def radio
    #  @radio
    #end
    attr_reader :radio, :x, :y

    def radio=radio
      if radio>0
        @radio=radio
      else
        @radio=@@RADIO_DEFECTO
      end
    end

    def envolvente=cuadrado
      if (@x == cuadrado.x) && (@y == cuadrado.y) && (@radio == (cuadrado.lado)/2)
        @envolvente=cuadrado
      else
        puts "error: el cuadrado no es envolvente"
      end
    end


    def self.num_circulos
      @@num_circulos
    end


    def pintar
      if @envolvente == nil
        puts "El circulo tiene radio: " + @radio.to_s +
               ",centro " + @x.to_s + ", " + @y.to_s
      else
        puts "El circulo tiene radio: " + @radio.to_s +
               ",centro " + @x.to_s + ", " + @y.to_s +
               " y envolvente de lado " + @envolvente.lado.to_s
      end
    end

    private_class_method :new

    def norte
      Punto.new(@x, @y+@radio)
    end

  end
end



