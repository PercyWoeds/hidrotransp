class AddTipoToAnexo8s < ActiveRecord::Migration
  def change
    add_column :anexo8s, :tipo, :string
  end
end
