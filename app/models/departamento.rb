class Departamento < ApplicationRecord
	has_secure_password
	validates_presence_of :email
	validates_uniqueness_of :email

	def gerar_senha_token!
	 self.resetar_senha_token = gerar_token
	 self.resetar_senha_timestamp = Time.now.utc
	 save!
	end

	def senha_token_valida?
	 (self.resetar_senha_timestamp + 12.hours) > Time.now.utc
	end

	def resetar_password!(senha)
	 self.resetar_senha_token = nil
	 self.resetar_senha_timestamp = nil
	 self.password = senha
	 save!
	end

	private

	def gerar_token
	 SecureRandom.hex(10)
	end
end
