class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :phones, dependent: :destroy
  accepts_nested_attributes_for :phones
end
