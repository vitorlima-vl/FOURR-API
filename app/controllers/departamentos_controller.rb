class DepartamentosController < ApplicationController
	@departamentos = Departamento.all
	render json: @departamentos
end
