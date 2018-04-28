require 'json'

class Dicionario
  def importa_json
    file = File.read('paises.json')
    hash_json = JSON.parse(file)
    return hash_json
  end
end




