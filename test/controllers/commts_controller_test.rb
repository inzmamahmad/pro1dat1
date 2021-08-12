require 'test_helper'

class CommtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @commt = commts(:one)
  end

  test "should get index" do
    get commts_url
    assert_response :success
  end

  test "should get new" do
    get new_commt_url
    assert_response :success
  end

  test "should create commt" do
    assert_difference('Commt.count') do
      post commts_url, params: { commt: { commentable_id: @commt.commentable_id, commentable_type: @commt.commentable_type, content: @commt.content } }
    end

    assert_redirected_to commt_url(Commt.last)
  end

  test "should show commt" do
    get commt_url(@commt)
    assert_response :success
  end

  test "should get edit" do
    get edit_commt_url(@commt)
    assert_response :success
  end

  test "should update commt" do
    patch commt_url(@commt), params: { commt: { commentable_id: @commt.commentable_id, commentable_type: @commt.commentable_type, content: @commt.content } }
    assert_redirected_to commt_url(@commt)
  end

  test "should destroy commt" do
    assert_difference('Commt.count', -1) do
      delete commt_url(@commt)
    end

    assert_redirected_to commts_url
  end
end
