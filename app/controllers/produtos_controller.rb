class ProdutosController < ApplicationController
		@produtos = Produto.all
		render json: @produtos
end
