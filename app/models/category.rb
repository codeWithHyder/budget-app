# class Category < ApplicationRecord
#   belongs_to :user, class_name: 'User'
#   has_many :joins, dependent: :destroy, foreign_key: 'category_id', class_name: 'Join'
#   has_many :expenses, through: :joins

#   validates :name, :icon, presence: true, length: { maximum: 50 }

#   def total_expenses(user)
#     expenses.where(user_id: user.id).sum(:amount)
#   end
# end

class Category < ApplicationRecord
  belongs_to :user
  has_many :joins, dependent: :destroy
  has_many :expenses, through: :joins

  validates :name, :icon, presence: true, length: { maximum: 50 }

  def total_expenses(user)
    expenses.where(user_id: user.id).sum(:amount)
  end
end
