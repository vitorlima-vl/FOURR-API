class SessionsController < ApplicationController
	include CurrentUserConcern

	def create
		departamento = Departamento
					.find_by(email: params["departamento"]["email"])
					.try(:authenticate, params["departamento"]["password"])

		if departamento
			session[:user_id] = departamento.id
			render json: {
				status: :created,
				logged_in: true,
				departamento: departamento
			}
		else
			render json: { status: 401 }
		end
	end
	def logged_in
		if @current_user
			render json: {
				logged_in: true,
				departamento: @current_user
			}
		else
			render json:{
				logged_in: false
			}
		end
	end
	def logout
		reset_session
		render json: { status: 200, logged_out: true }
	end
end

#curl --header "Content-Type: application/json" --request POST --data '{"departamento": {"email": "teste@gmail.com","password": "123456"}}' http://localhost:3000/sessions
