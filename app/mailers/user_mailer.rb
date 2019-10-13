class UserMailer < ApplicationMailer
	def bemvindo_email(departamento)
	    @departamento = departamento
	    mail(to: @departamento.email, subject: 'Bem vindo ao 4R!')
  	end
  	def esqueci_senha(departamento)
	    @departamento = departamento
	    mail(to: @departamento.email, subject: 'Solicitação de alteração de senha do 4R!')
  	end
end