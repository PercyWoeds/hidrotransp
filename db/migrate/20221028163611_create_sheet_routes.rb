class CreateSheetRoutes < ActiveRecord::Migration
  def change
    create_table :sheet_routes do |t|
      t.string :code
      t.datetime :fecha
      t.integer :truck_id
     

      t.timestamps null: false
    end
  end
end
