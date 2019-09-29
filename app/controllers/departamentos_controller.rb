class DepartamentosController < ApplicationController
	def index
		@departamentos = Departamento.all
		render json: @departamentos
	end
end
