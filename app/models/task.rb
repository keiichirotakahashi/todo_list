class Task < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }, uniqueness: true
  validates :status, presence: true

  def self.search(query)
    if query
      where(['name LIKE ?', "%#{query}%"])
    else
      all
    end
  end
end
