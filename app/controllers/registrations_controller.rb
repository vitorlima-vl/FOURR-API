class RegistrationsController < ApplicationController
	def create
		departamento = Departamento.create!(
			nome: params['departamento']['nome_depto'],
			email: params['departamento']['email'],
			password: params['departamento']['password'],
			password_confirmation: params['departamento']['password_confirmation'])

		if departamento
			#session[:user_url] = user_id
			render json: {
				status: :created,
				user: departamento
			}
		else
			render json: { status: 500 }
		end
	end
end

#curl --header "Content-Type: application/json" --request POST --data '{"departamento": {"nome_depto": "dmat","email": "teste@gmail.com","password": "123456"}}' http://localhost:3000/registrations