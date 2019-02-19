class Cliente < ApplicationRecord

	has_many :qualificacoes

	validates_presence_of :nome, message: " - Deve ser preenchido"
	validates_numericality_of :idade, greater_than: 0,
                                  less_than: 100,
                                  message: " - deve ser um número entre 0 e 100"
end
