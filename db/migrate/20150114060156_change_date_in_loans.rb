class ChangeDateInLoans < ActiveRecord::Migration
  def change
  	change_column :loans, :fechaEntrega, :date
  end
end
