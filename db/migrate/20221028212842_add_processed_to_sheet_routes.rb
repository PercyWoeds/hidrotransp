class AddProcessedToSheetRoutes < ActiveRecord::Migration
  def change
    add_column :sheet_routes, :processed, :string
  end
end
