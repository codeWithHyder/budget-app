# class Join < ApplicationRecord
#   belongs_to :categories, class_name: 'Category'
#   belongs_to :expenses, class_name: 'Expense'
# end

class Join < ApplicationRecord
  belongs_to :category
  belongs_to :expense
end
