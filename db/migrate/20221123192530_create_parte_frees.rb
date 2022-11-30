class CreateParteFrees < ActiveRecord::Migration
  def change
    create_table :parte_frees do |t|
      t.integer :tanque_id
      t.float :inicial
      t.float :compra
      t.float :venta
      t.float :abaste
      t.float :abaste2
      t.float :stock_final
      t.float :medicion

      t.timestamps null: false
    end
  end
end
