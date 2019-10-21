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

  def nova_img
    produto = Produto.last
    print('teste',params,params['imagem'])
    produto.image.attatch(params['fd'])
    render json: {status: true, produto: produto}
  end
#['imagem']
#.imagem
#params

  private
    def produto_params
      params.require(:produto).permit(:descricao, :nome_prod, :imagem, :categoria, :dono_prod)
    end

end
