class RegistrationsController < ApplicationController
	def create
		departamento = Departamento.create!(
			nome: params['departamento']['nome_depto'],
			email: params['departamento']['email'],
			password: params['departamento']['password'],
			password_confirmation: params['departamento']['password_confirmation'])

		if departamento
			session[:user_id] = departamento.id
			UserMailer.bemvindo_email(departamento).deliver_now
			render json: {
				status: true,
				user: departamento
			}
		else
			render json: { status: 500 }
		end
	end
end

#curl --header "Content-Type: application/json" --request POST --data '{"departamento": {"nome_depto": "dmat","email": "teste@gmail.com","password": "123456"}}' http://localhost:3000/registrations
