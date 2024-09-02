class Employee < ApplicationRecord
  validates :name, :email, :hire_date, :employment_number, presence: true
  validates :email, uniqueness: true
  validates :employment_number, uniqueness: { scope: :branch_id }
  
  belongs_to :branch
  has_many :financial_packages, dependent: :destroy
  has_one :termination, dependent: :destroy
  has_and_belongs_to_many :rooms
end
