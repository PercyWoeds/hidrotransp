class AddNombreToInvoice < ActiveRecord::Migration
  def change
    add_column :invoices, :nombre, :string
  end
end
