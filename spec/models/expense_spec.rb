require 'rails_helper'

RSpec.describe Expense, type: :model do
  before(:each) do
    @user = FactoryBot.create(:user)
    @category = FactoryBot.create(:category, user: @user)
  end

  it 'is valid with valid attributes' do
    expense = Expense.new(name: 'Test Expense', amount: 100, user: @user)
    expect(expense).to be_valid
  end

  it 'is not valid without a name' do
    expense = Expense.new(name: nil, amount: 100, user: @user)
    expect(expense).to_not be_valid
  end

  it 'is not valid without an amount' do
    expense = Expense.new(name: 'Test Expense', amount: nil, user: @user)
    expect(expense).to_not be_valid
  end

  it 'is not valid with a negative amount' do
    expense = Expense.new(name: 'Test Expense', amount: -100, user: @user)
    expect(expense).to_not be_valid
  end

  it 'is not valid with a zero amount' do
    expense = Expense.new(name: 'Test Expense', amount: 0, user: @user)
    expect(expense).to_not be_valid
  end

  it 'is not valid with a non-numeric amount' do
    expense = Expense.new(name: 'Test Expense', amount: 'abc', user: @user)
    expect(expense).to_not be_valid
  end
end
