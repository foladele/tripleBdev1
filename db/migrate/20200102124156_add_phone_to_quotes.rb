class AddPhoneToQuotes < ActiveRecord::Migration[5.1]
  def change
    add_column :quotes, :phone_num, :string
  end
end
