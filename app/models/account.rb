class Account < ApplicationRecord
  belongs_to :user
  ACCOUNT_TYPE = ["saving","current"]
end
