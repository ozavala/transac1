class GlAccount < ApplicationRecord
  belongs_to :account_type
  has_many :transaction_details
  has_many :transactions, through: :transaction_details
  has_many :organization_accounts
end
