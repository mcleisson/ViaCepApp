class AddLatitudeAndLongitudeToContatos < ActiveRecord::Migration[7.0]
  def change
    add_column :contatos, :latitude, :float
    add_column :contatos, :longitude, :float
  end
end
