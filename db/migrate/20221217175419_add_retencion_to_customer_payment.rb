class AddRetencionToCustomerPayment < ActiveRecord::Migration
  def change
    add_column :customer_payments, :retencion, :float
  end
end
