class SenhasController < ApplicationController
	def forgot
    if params[:email].blank? 
    	return render json: {error: "email não existe"}
  	end

    departamento = Departamento.find_by(email: params[:email])

    if departamento.present?
      departamento.gerar_senha_token!
      UserMailer.esqueci_senha(departamento).deliver_now
      render json: {status: "ok"}, status: :ok
    else
      render json: {error: ["Email não encontrado. Tente novamente"]}, status: :not_found
    end
  end

  def reset
    token = params[:token].to_s

    if params[:email].blank?
      return render json: {error: "Token não existe"}
    end

    departamento = departamento.find_by(resetar_senha_token: token)

    if departamento.present? && departamento.senha_token_valida?
      if departamento.resetar_password!(params[:password])
        render json: {status: "ok"}, status: :ok
      else
        render json: {error: departamento.errors.full_messages}, status: :unprocessable_entity
      end
    else
      render json: {error:  ["Link expirado, gere um novo link"]}, status: :not_found
    end
  end
end
