class CreateQuotes < ActiveRecord::Migration[5.1]
  def change
    create_table :quotes do |t|
      t.string :fname
      t.string :lname
      t.string :address
      t.string :service
      t.string :city
      t.string :description
      t.integer :zip

      t.timestamps
    end
  end
end
