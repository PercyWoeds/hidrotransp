class AddSheetRoutesToSheetRouteDetails < ActiveRecord::Migration
  def change
     add_column :sheet_route_details, :sheet_route_id, :integer 
    add_reference :sheet_route_details, :sheet_routes, index: true, foreign_key: true
  end
end
