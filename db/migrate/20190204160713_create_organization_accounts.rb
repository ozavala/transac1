class CreateOrganizationAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :organization_accounts do |t|
      t.date :from_date
      t.date :to_date
      t.references :party, foreign_key: true
      t.references :gl_account, foreign_key: true
      t.references :accounting_period, foreign_key: true

    end
  end
end
