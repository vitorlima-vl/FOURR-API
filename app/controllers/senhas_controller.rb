class SenhasController < ApplicationController
  def forgot
    departamento = Departamento
          .find_by(email: params["departamento"]["email"])

    if departamento
      departamento.gerar_senha_token!
      UserMailer.esqueci_senha(departamento).deliver_now
      render json: {status: true}
    else
      render json: {error: ["Email não encontrado. Tente novamente"]}
    end
  end

  def reset
    departamento = Departamento
          .find_by(resetar_senha_token: params["departamento"]["token"])

    if departamento && departamento.senha_token_valida?
      if departamento.resetar_password!(params["departamento"]["password"])
        render json: {status: true}
      else
        render json: {error: departamento.errors.full_messages}, status: :unprocessable_entity
      render json: {status: true}
      end
    else
      render json: {error: ["Email não encontrado. Tente novamente"]}
    end
  end
end