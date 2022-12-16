class CreateAssistances < ActiveRecord::Migration
  def change
    create_table :assistances do |t|
      t.string :departamento
      t.string :nombre
      t.string :nro
      t.datetime :fecha
      t.string :equipo
      t.string :cod_verificacion
      t.string :num_tarjeta

      t.timestamps null: false
  
     add_reference :assistances, :inasist, index: true, foreign_key: true

    end
  end
end
