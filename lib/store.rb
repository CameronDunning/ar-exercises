class Store < ActiveRecord::Base
  has_many :employees

  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :mens_and_womens_apparel

  def mens_and_womens_apparel
    unless mens_apparel || womens_apparel
      errors.add(:mens_and_womens_apparel, "there must be at least one or the other")
    end
  end

  before_destroy :check_employees

  private

  def check_employees
    if self.employees.size > 0
      throw :abort
    end
  end
end
