require "test/unit"
require_relative "telefone"

class TelefoneSpec < Test::Unit::TestCase
  def test_letra_para_numero
    assert_equal Telefone.letra_para_numero("A"), "2"
    assert_equal Telefone.letra_para_numero("D"), "3"
    assert_equal Telefone.letra_para_numero("1"), "1"
    assert_equal Telefone.letra_para_numero("-"), "-"
    assert_equal Telefone.letra_para_numero("Z"), "9"
  end
  
  def test_converter
    assert_equal Telefone.converter("1-HOME-SWEET-HOME"), "1-4663-79338-4663"
  end
  
  def test_converter_a_patir_de_stdin
    
    telefones = "1-HOME-SWEET-HOME\nMY-MISERABLE-JOB"
    esperado = "1-4663-79338-4663\n69-647372253-562"
    
    assert_equal Telefone.converter(telefones),esperado 
    
  end 
end