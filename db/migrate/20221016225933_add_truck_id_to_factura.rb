class AddTruckIdToFactura < ActiveRecord::Migration
  def change
    add_column :facturas, :truck_id, :integer
  end
end
