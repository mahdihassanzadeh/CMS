require 'test_helper'

class CommentersControllerTest < ActionController::TestCase
  setup do
    @commenter = commenters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:commenters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create commenter" do
    assert_difference('Commenter.count') do
      post :create, :page_id => pages(:two).id
    end

    assert_redirected_to comment_path(assigns(:commenter).comment)
  end

  test "should show commenter" do
    get :show, id: @commenter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @commenter
    assert_response :success
  end

  test "should update commenter" do
    put :update, id: @commenter, commenter: @commenter.attributes
    assert_redirected_to commenter_path(assigns(:commenter))
  end

  test "should destroy commenter" do
    assert_difference('Commenter.count', -1) do
      delete :destroy, id: @commenter
    end

    assert_redirected_to commenters_path
  end
end
