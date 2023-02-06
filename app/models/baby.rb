class Baby < ApplicationRecord
  belongs_to :baby_list

  validates :name, presence: true
  validates_uniqueness_of :name, scope: :baby_list_id
  validates :baby_list_id, presence: true
end
