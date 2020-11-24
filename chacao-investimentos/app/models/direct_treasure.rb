class DirectTreasure < ApplicationRecord
  has_many :application_dts, dependent: :destroy
end
