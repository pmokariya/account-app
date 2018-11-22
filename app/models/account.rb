class Account < ApplicationRecord
  belongs_to :user
  has_many :transfers, dependent: :destroy
  ACCOUNT_TYPE = ["saving","current"]
end
