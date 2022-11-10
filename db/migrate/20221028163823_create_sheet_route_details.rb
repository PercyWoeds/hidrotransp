class CreateSheetRouteDetails < ActiveRecord::Migration
  def change
    create_table :sheet_route_details do |t|
      t.datetime :fecha
      t.integer :employee_id
      t.float :km_in
      t.float :km_out
      t.float :total
      t.text :lugar
      t.float :comb_km
      t.float :comb_glns
      t.float :mant_km
      t.text :observa
      t.string :references
      t.string :employees

      t.timestamps null: false
    end
  end
end
