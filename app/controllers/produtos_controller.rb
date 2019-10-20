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
      render json: {status: true, produto: produto}
    else
      render json: {error: ["Dono não encontrado. Tente novamente"]}
    end
  end
  def novo_produto_img
      produto = Produto.find(params['imagem']['produto'])
      produto.image.attatch(params['imagem']['formData'])
      render json: {status: true, produto: produto}
    else
      render json: {error: ["Produto não encontrado. Tente novamente"]}
    end
  end

end
