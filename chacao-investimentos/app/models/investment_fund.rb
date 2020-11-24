class InvestmentFund < ApplicationRecord
  has_many :application_ifs, dependent: :destroy
end
