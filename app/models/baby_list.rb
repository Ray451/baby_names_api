class BabyList < ApplicationRecord
  has_many :babies

  validates :list_id, presence: true
end
