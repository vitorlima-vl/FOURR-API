class CreateSolicitacaos < ActiveRecord::Migration[6.0]
  def change
    create_table :solicitacaos do |t|
    	t.integer :produto_id
    	t.string :depto_solicitante
    	t.datetime :data_solicitacao
    end
  end
end
