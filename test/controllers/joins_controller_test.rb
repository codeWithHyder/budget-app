require 'test_helper'

class JoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @join = joins(:one)
  end

  test 'should get index' do
    get joins_url
    assert_response :success
  end

  test 'should get new' do
    get new_join_url
    assert_response :success
  end

  test 'should create join' do
    assert_difference('Join.count') do
      post joins_url, params: { join: { category_id: @join.category_id, expense_id: @join.expense_id } }
    end

    assert_redirected_to join_url(Join.last)
  end

  test 'should show join' do
    get join_url(@join)
    assert_response :success
  end

  test 'should get edit' do
    get edit_join_url(@join)
    assert_response :success
  end

  test 'should update join' do
    patch join_url(@join), params: { join: { category_id: @join.category_id, expense_id: @join.expense_id } }
    assert_redirected_to join_url(@join)
  end

  test 'should destroy join' do
    assert_difference('Join.count', -1) do
      delete join_url(@join)
    end

    assert_redirected_to joins_url
  end
end
