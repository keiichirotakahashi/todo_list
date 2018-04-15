class Task < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }, uniqueness: true
  validates :status, presence: true

  def self.search(query)
    if query.present?
      where(['name LIKE ?', "%#{query}%"]).where(status: 0)
    else
      where(id: nil)
    end
  end
end
