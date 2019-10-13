class UserMailer < ApplicationMailer
	def bemvindo_email(departamento)
    @departamento = departamento
    mail(to: @departamento.email, subject: 'Bem vindo ao Fourr!')
  end
end