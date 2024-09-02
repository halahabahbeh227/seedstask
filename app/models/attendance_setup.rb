class AttendanceSetup < ApplicationRecord
  validates :roster, inclusion: { in: [true, false] }
  belongs_to :branch
end
