class Category < ApplicationRecord
  belongs_to :user
  has_many :joins, dependent: :destroy
  has_many :expenses, through: :joins

  validates :name, :icon, presence: true, length: { maximum: 50 }

  def total_expenses(user)
    expenses.where(user_id: user.id).sum(:amount) || 0
  end
end
