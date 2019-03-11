class Qualificacao < ApplicationRecord

	belongs_to :cliente
	belongs_to :restaurante

	validates_presence_of :cliente_id, message: " - Sem cliente_id"
	validates_presence_of :restaurante_id, message: " - Sem restaurante_id"

	validates_associated :cliente
	validates_associated :restaurante

	validates_presence_of :nota, message: " - deve ser preenchido"
	validates_presence_of :valor_gasto, message: " - deve ser preenchido"

	validates_numericality_of :nota, greater_than_or_equal_to: 0,
                                less_than_or_equal_to: 5,
                                message: " - deve ser um número entre 0 e 5"
  validates_numericality_of :valor_gasto, greater_than: 0,
                                        message: " - deve ser um número maior que 0"
end

