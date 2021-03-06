class Produto < ApplicationRecord
	has_one_attached :image

	def self.buscar_prod(nome)
		where("lower(nome_prod) LIKE ?", '%' + nome.downcase + '%') 
	end

	def self.buscar_prod_dono(email)
		where("lower(dono_produto) LIKE ?", '%' + email.downcase + '%') 
	end

	def logo_url
	    Rails.application.routes.url_helpers.url_for(self.image)
	end
end
