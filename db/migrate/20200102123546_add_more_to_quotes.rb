class AddMoreToQuotes < ActiveRecord::Migration[5.1]
  def change
    add_column :quotes, :state, :string
    add_column :quotes, :complete, :boolean
    add_column :quotes, :email, :string
  end
end
