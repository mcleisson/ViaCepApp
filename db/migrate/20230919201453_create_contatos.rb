class CreateContatos < ActiveRecord::Migration[7.0]
  def change
    create_table :contatos do |t|
      t.string :nome
      t.string :email
      t.string :telefone
      t.string :cep
      t.string :logradouro
      t.string :bairro
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end
