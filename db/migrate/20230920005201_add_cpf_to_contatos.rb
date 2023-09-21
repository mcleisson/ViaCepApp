class AddCpfToContatos < ActiveRecord::Migration[7.0]
  def change
    add_column :contatos, :cpf, :string
    add_index :contatos, :cpf, unique: true
  end
end
