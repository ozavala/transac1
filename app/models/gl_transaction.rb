class GlTransaction < ApplicationRecord
  belongs_to :transaction_type
  has_many :transaction_details
  # belongs_to :receipt_transaction, class_name: :party, foreign_key: :to_party_id
  # belongs_to :origin_transaction, class_name: :party, foreign_key: :from_party_id
  belongs_to :party, foreign_key: :to_party
  belongs_to :party, foreign_key: :from_party
end
