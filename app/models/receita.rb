class Receita < ApplicationRecord

  #validacoes
  validates_presence_of :conteudo, message: " - deve ser preenchido"
  validates_presence_of :prato_id
  validates_associated :prato

  #relacionamentos
  belongs_to :prato
end
