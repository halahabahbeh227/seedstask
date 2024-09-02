class FinancialPackage < ApplicationRecord
  validates :from_date, presence: true
  validates :to_date, presence: true
  validates :amount, numericality: { greater_than_or_equal_to: 200 }
  validate :dates_validity

  belongs_to :employee

  private

  def dates_validity
    if from_date < Date.new(2023, 1, 1)
      errors.add(:base, "cannot be before 1-Jan-2023")
    end

    if to_date < from_date
      errors.add(:base, "cannot be less than From date")
    end
  end
end
