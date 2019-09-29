class HistoricosController < ApplicationController
	@historicos = Historico.all
	render json: @historicos
end
