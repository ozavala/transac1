class AccountingPeriod < ApplicationRecord
  belongs_to :period_type
  belongs_to :party
  belongs_to :organization_account 
end
