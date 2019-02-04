class CreateAccountTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :account_types do |t|
      t.string :acc_type_code
      t.string :classification


    end
  end
end
