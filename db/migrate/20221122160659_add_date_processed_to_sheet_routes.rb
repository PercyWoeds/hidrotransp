class AddDateProcessedToSheetRoutes < ActiveRecord::Migration
  def change
    add_column :sheet_routes, :date_processed, :datetime
  end
end
