class CreateTransactionDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :transaction_details do |t|
      t.integer :detail_seq
      t.decimal :amount, precision: 20, scale: 2
      t.string :dbcr_flag
      t.references :party, foreign_key: true
      t.integer :parent_detail_seq
      t.references :gl_account, foreign_key: true
      t.references :gl_transaction, foreign_key: true

    end
  end
end
