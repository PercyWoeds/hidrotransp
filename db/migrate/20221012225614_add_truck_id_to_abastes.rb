class AddTruckIdToAbastes < ActiveRecord::Migration
  def change
    add_column :abastes, :truck_id, :integer
  end
end
