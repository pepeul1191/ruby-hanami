module Web::Controllers::Estacion
  class Listar
    include Web::Action

    def initialize
      puts "initializers"
    end

    def call(params)
      self.body = Web::Models::Estacion.select(:ide_estacion, :latitud, :longitud).to_json
    end
  end
end
