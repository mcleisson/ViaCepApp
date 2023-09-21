class AddUserIdToContatos < ActiveRecord::Migration[7.0]
  def change
    add_reference :contatos, :user, foreign_key: true
  end
end
