class AddTruckIdToVarillaje < ActiveRecord::Migration
  def change
    add_column :varillajes, :truck_id, :integer
  end
end
