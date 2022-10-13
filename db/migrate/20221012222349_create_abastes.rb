class CreateAbastes < ActiveRecord::Migration
  def change
    create_table :abastes do |t|
      t.string :code
      t.datetime :fecha
      t.integer :customer_id
      t.integer :vehiculo_id
      t.integer :employee_id
      t.string :km
      t.string :galones
      t.integer :horometro
      t.text :comments
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
