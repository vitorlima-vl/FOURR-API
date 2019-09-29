class SolicitacaosController < ApplicationController
	def index
		@solicitacaos = Solicitacao.all
		render json: @solicitacaos
  end
end
