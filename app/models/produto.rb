class Produto < ApplicationRecord
	has_one_attached :image

	def self.buscar_prod(nome)
		print(nome)
		where("lower(nome_prod) LIKE ?", '%' + nome.downcase + '%') 
	end
end
