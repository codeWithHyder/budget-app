require 'application_system_test_case'

class JoinsTest < ApplicationSystemTestCase
  setup do
    @join = joins(:one)
  end

  test 'visiting the index' do
    visit joins_url
    assert_selector 'h1', text: 'Joins'
  end

  test 'should create join' do
    visit joins_url
    click_on 'New join'

    fill_in 'Category', with: @join.category_id
    fill_in 'Expense', with: @join.expense_id
    click_on 'Create Join'

    assert_text 'Join was successfully created'
    click_on 'Back'
  end

  test 'should update Join' do
    visit join_url(@join)
    click_on 'Edit this join', match: :first

    fill_in 'Category', with: @join.category_id
    fill_in 'Expense', with: @join.expense_id
    click_on 'Update Join'

    assert_text 'Join was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Join' do
    visit join_url(@join)
    click_on 'Destroy this join', match: :first

    assert_text 'Join was successfully destroyed'
  end
end
