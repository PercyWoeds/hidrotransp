class AddQtyToAbastes < ActiveRecord::Migration
  def change
    add_column :abastes, :qty, :float
  end
end
