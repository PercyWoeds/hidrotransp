class AddTruckIdToParteFree < ActiveRecord::Migration
  def change
    add_column :parte_frees, :truck_id, :integer
  end
end
