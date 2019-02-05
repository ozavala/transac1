class CreateGlTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :gl_transactions do |t|
      t.date :transaction_date
      t.date :entry_date
      t.string :description
      t.references :transaction_type, foreign_key: true
      t.integer :to_party
      t.integer :from_party
    end
    add_foreign_key :gl_transactions, :parties, column: :to_party
    add_foreign_key :gl_transactions, :parties, column: :from_party

  end
end
