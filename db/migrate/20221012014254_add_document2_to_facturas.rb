class AddDocument2ToFacturas < ActiveRecord::Migration
  def change
    add_column :facturas, :document2, :string
    add_column :facturas, :anexo8_id, :integer 
    
    
  end
end
