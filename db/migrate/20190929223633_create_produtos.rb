class CreateProdutos < ActiveRecord::Migration[6.0]
  def change
    create_table :produtos do |t|
    	t.string :descricao
    	t.string :categoria
    	t.string :imagem
    	t.string :nome_prod
    	t.string :dono_produto
      t.timestamps
    end
  end
end