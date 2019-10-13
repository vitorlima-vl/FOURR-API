class AddResetarSenhaColunaDepto < ActiveRecord::Migration[6.0]
  def change
  	add_column :departamentos, :resetar_senha_token, :string
	add_column :departamentos, :resetar_senha_timestamp, :datetime
  end
end
