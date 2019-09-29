class SolicitacaosController < ApplicationController
		@solicitacaos = Solicitacao.all
		render json: @solicitacaos
  end
end
