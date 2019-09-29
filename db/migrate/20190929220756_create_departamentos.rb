class CreateDepartamentos < ActiveRecord::Migration[6.0]
  def change
    create_table :departamentos do |t|
    	t.string :email
    	t.string :senha
    	t.string :nome_depto
      t.timestamps
    end
  end
end