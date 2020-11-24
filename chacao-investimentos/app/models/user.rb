class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :phones, dependent: :destroy
  has_many :accounts, dependent: :destroy
  has_many :addresses, dependent: :destroy
  has_many :application_fis, dependent: :destroy
  has_many :application_ifs, dependent: :destroy
  has_many :application_dts, dependent: :destroy
  accepts_nested_attributes_for :phones
  accepts_nested_attributes_for :accounts
  accepts_nested_attributes_for :addresses


  def phone
    phone = self.phones.first
    if phone
      "(#{phone.ddd}) #{phone.number}"
    end
  end
end
