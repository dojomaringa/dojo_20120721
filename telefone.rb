class Telefone
  
  @@mapeamento = {
    "A".."C" => "2",
    "D".."F" => "3",
    "G".."I" => "4",
    "J".."L" => "5",
    "M".."O" => "6",
    "P".."S" => "7",
    "T".."V" => "8",
    "W".."Z" => "9"
  }

  def self.letra_para_numero(letra)
    @@mapeamento.each do |letras, value|
      return value if letras.include?(letra.upcase)
    end
    letra
  end
  
  def self.converter(telefone)
    conversao = ""
    
    telefone.each_char do |letra|
      conversao << letra_para_numero(letra)
    end
    
    conversao
  end
end
  