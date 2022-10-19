class AddTruckIdToTanques < ActiveRecord::Migration
  def change
    add_column :tanques, :truck_id, :integer
  end
end
