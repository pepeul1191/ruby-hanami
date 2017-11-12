module Accesos::Controllers::Sistema
  class Listar
    include Accesos::Action
    def call(params)
      self.body = Accesos::Models::Sistema.all.to_a.to_json
    end
  end
end
