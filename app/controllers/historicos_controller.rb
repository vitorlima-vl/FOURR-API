class HistoricosController < ApplicationController
	def index 
		@historicos = Historico.all
		render json: @historicos
	end
end
