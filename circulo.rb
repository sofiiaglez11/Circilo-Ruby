# frozen_string_literal: true

module Circulos
  require_relative 'punto'
  require_relative 'cuadrado'
  require_relative 'figura'
  class Circulo < Figura
    public_class_method :new

    @@num_circulos = 0
    @@RADIO_DEFECTO=1.0

    def self.cuantos_circulos_hay
      puts "Hay " + @@num_circulos.to_s + " circulos"
      return @@num_circulos
    end

    def initialize (radio, x, y)
      super(0)
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

    def self.new_copia(otro)
      copia = self.new_parametros(otro.radio,otro.x,otro.y) # necesitamos los readers para hacer esto
      if otro.envolvente != nil
        #copia superficial de la envolvente
        #copia.envolvente =otro.envolvente
        # #copia profunta
        copia.envolvente=Cuadrado.new(otro.envolvente.lado, otro.envolvente.x, otro.envolvente.y)
        # si no tuviéramos readers, tendría que habe run constructor de copia de cuadrado
      end
      copia
    end

    # redefinir clone para que haga copia profunda
    def clone
      copia = super
      copia.envolvente=@envolvente.clone #no hace falta hacer la comprobación de si es nil
      copia
    end

    #def radio
    #  @radio
    #end
    attr_reader :radio, :x, :y, :envolvente

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
               ", centro " + @x.to_s + ", " + @y.to_s +
               " y envolvente de lado " + @envolvente.lado.to_s
      end
    end

    public_class_method :new

    def norte
      Punto.new(@x, @y+@radio)
    end

    def area
      Math::PI * @radio * @radio
    end

    def perimetro
      Math::PI * 2* radio
    end

    #reflexión



  end
end



