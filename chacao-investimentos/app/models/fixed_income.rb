class FixedIncome < ApplicationRecord
  has_many :application_fis, dependent: :destroy
end
