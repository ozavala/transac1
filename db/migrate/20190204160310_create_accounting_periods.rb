class CreateAccountingPeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :accounting_periods do |t|
      t.date :from_date
      t.date :to_date
      t.references :period_type, foreign_key: true
      t.references :party, foreign_key: true

    end
  end
end
