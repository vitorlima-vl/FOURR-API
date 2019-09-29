class SolicitacaosController < ApplicationController
	def index
    render json: Solicitacaos.all
  end
end
