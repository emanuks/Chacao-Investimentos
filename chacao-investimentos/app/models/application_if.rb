class ApplicationIf < ApplicationRecord
  belongs_to :user
  belongs_to :investment_fund
end
