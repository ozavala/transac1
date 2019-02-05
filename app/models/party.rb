class Party < ApplicationRecord
  has_many :organization_accounts
  has_many :gl_accounts, through: :organization_accounts
  has_many :gl_transactions, foreign_key: :from_party
  has_many :gl_transactions, foreign_key: :to_party
  has_many :accounting_periods

end
