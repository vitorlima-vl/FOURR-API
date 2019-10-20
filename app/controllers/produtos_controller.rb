class ProdutosController < ApplicationController
	def index
		@produtos = Produto.all
		render json: @produtos
	end

  def novo_produto
    dono = Departamento
          .find_by(email: params["produto"]["dono_produto"])
    if dono
      produto = Produto.create!(
			descricao: params['produto']['descricao'],
			dono_produto: params['produto']['dono_produto'],
			categoria: params['produto']['categoria'],
			nome_prod: params['produto']['nome_prod'])
      render json: {status: true, params['produto']['imagem']}
      produto.image.attatch(params['produto']['imagem'])
    else
      render json: {params['produto']['imagem'], error: ["Dono não encontrado. Tente novamente"]}
    end
  end

end
