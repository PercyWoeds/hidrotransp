class AddMonedaToInvoices < ActiveRecord::Migration
  def change
    add_column :invoices, :moneda, :string
  end
end
