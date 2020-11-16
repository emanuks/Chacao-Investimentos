class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :phones, dependent: :destroy
  has_many :accounts, dependent: :destroy
  accepts_nested_attributes_for :phones
  accepts_nested_attributes_for :accounts
end
