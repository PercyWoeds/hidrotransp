class RemoveGalonesFromAbastes < ActiveRecord::Migration
  def change
    remove_column :abastes, :galones, :string
  end
end
