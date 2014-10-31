class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.references :lab
      
      t.float "income"
      t.float  "outcome"
      t.integer "outcome_type"
      t.string "outcome_code"
      
      t.datetime "date"
      t.string "recipient"
      t.text "description"
      t.text "observations"
       
      t.timestamps
    end
  end
end
