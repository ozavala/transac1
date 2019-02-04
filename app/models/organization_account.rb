class OrganizationAccount < ApplicationRecord
  belongs_to :party
  belongs_to :accounting_period
  belongs_to :party
end
