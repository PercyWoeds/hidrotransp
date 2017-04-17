class AddNombreNotaCredits < ActiveRecord::Migration
  def change
  	add_column :notacredits, :nombre, :string
  end
end
