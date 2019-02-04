class CreateTransactionTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :transaction_types do |t|
      t.string :transaction_type_code
      t.string :description

    end
  end
end
