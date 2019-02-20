class Restaurante < ApplicationRecord

	# nome, endereco, especialidade

	has_many :qualificacoes
	has_and_belongs_to_many :pratos

	validates_presence_of :nome, message: "deve ser preenchido"
	validates_presence_of :endereco, message: "deve ser preenchido"	

end
