class AddUserIdToSheetRoutes < ActiveRecord::Migration
  def change
    add_column :sheet_routes, :user_id, :integer
  end
end
