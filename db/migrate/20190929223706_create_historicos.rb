class CreateHistoricos < ActiveRecord::Migration[6.0]
  def change
    create_table :historicos do |t|
    	t.integer :produto_id
    	t.string :depto_solicitante
    	t.datetime :data_reposta
    	t.datetime :data_solicitacao
    	t.integer :resultado
    end
  end
end
