class CreateDepartamentos < ActiveRecord::Migration[6.0]
  def change
    create_table :departamentos do |t|
      t.string :nome
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
