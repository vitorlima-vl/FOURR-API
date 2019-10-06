class ProdutosController < ApplicationController
		def index
			@produtos = Produto.all
			render json: @produtos
		end

		def create
			@produto = Produto.new(parametros_produto)

			@produto.save
			render json: @produto, status: :created
		end

		def destroy
			@produto = Produto.where(id: parametros[:id]).first
			if @produto.destroy
				head(:ok)
			else
				head(:unprocessable_entity)
		end

end
