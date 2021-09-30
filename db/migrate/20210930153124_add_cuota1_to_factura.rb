class AddCuota1ToFactura < ActiveRecord::Migration
  def change
    add_column :facturas, :cuota1, :integer
    add_column :facturas, :importe_cuota1, :float
    add_column :facturas, :fecha_cuota1, :datetime
   
    add_column :facturas, :cuota2, :integer
    add_column :facturas, :importe_cuota2, :float
    add_column :facturas, :fecha_cuota2, :datetime
    
    add_column :facturas, :cuota3, :integer
    add_column :facturas, :importe_cuota3, :float
    add_column :facturas, :fecha_cuota3, :datetime


  end
end
