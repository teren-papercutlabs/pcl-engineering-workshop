class Task < ApplicationRecord
  belongs_to :category

  # Status enum: pending (0), in_progress (1), completed (2)
  enum :status, { pending: 0, in_progress: 1, completed: 2 }

  # Priority enum: low (0), medium (1), high (2)
  enum :priority, { low: 0, medium: 1, high: 2 }

  validates :title, presence: true
  validates :status, presence: true
  validates :priority, presence: true

  scope :by_due_date, -> { order(due_date: :asc) }
  scope :by_priority, -> { order(priority: :desc) }
end
