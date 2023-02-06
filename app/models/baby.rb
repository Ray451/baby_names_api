class Baby < ApplicationRecord
  belongs_to :baby_list

  validates :name, presence: true
  validates :baby_list_id, presence: true
end
