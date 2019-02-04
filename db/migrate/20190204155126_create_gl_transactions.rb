class CreateGlTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :gl_transactions do |t|
      t.date :transaction_date
      t.date :entry_date
      t.string :description
      t.references :transaction_type, foreign_key: true
      t.references :to_party
      t.references :from_party

    end
  end
end
