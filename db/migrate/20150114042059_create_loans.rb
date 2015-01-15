class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.date :fechaEntrega
      t.integer :cantidad
      t.string :ubicacion
      t.string :observaciones
      t.string :correo

      t.timestamps
    end
  end
end
