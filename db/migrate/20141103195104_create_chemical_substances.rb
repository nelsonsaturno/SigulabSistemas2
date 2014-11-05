class CreateChemicalSubstances < ActiveRecord::Migration
  def change
    create_table :chemical_substances do |t|
      t.string :name
      t.string :purity
      t.string :matter_states
      t.boolean :controlled
      t.string :legal_regime
      t.string :quantity
      t.string :cas
      t.string :use
      t.string :status
      t.string :responsible
      t.string :location
      t.date :expiration_date
      t.string :dangerous
      t.boolean :rI7
      t.boolean :rI4
      t.boolean :toxic
      t.boolean :oxidant
      t.boolean :explosive
      t.boolean :irritating
      t.boolean :inflamable
      t.boolean :corrosive
      t.boolean :nocive
      t.boolean :investigation
      t.boolean :teaching
      t.boolean :extention
      t.boolean :management

      t.timestamps
    end
  end
end
