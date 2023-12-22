# frozen_string_literal: true

#simular una interfaz
module Inflable
  def inflar(aire)
    if (aire>10)
      #para añadirlo a toda la clase,
      # Rueda.class_eval do
      self.instance_eval do
        def volar
          puts "Puedo volar!!"
        end
      end
    end
    @radio+=aire
  end
end
