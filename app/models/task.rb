class Task < ApplicationRecord
  validates :name, presence: true, length: { maximum: 255 }
  validates :status, presence: true
  validates :due_date, presence: true
end
