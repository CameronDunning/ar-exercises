class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, inclusion: { in: (40..200) }
  validates :store, presence: true

  before_create :create_password

  private

  def create_password
    self.password = rand(100000..999999)
  end
end
