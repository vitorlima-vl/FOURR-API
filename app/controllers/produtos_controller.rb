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
### curl --header "Content-Type: application/json" --request GET --data '{"produto": {"nome": "MAc"}}' http://localhost:3000/search
  def nova_img
    produto = Produto.last
    produto.image.attach(params[:image])
    render json: {status: true, produto: produto}
  end

  def buscar
    produtos = Produto.buscar_prod(params['produto']['nome']) 
    render json: {status: true, produtos: produtos}
  end

  def buscardono
    produtos= Produto.buscar_prod_dono(params['produto']['dono'])
    render json: {status: true, produtos: produtos}
  end

  def deleteitem
    Produto.find(params['produto']['id']).delete
    produtos= Produto.buscar_prod_dono(params['produto']['dono'])
    render json: {status: true, produtos: produtos}
  end
  
  private
    def produto_params
      params.require(:produto).permit(:descricao, :nome_prod, :imagem, :categoria, :dono_prod)
    end
end