class AddNameToParteFree < ActiveRecord::Migration
  def change
    add_column :parte_frees, :name, :string 
  end
end
