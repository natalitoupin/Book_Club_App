require 'test_helper'

class BooksControllerTest < ActionController::TestCase
  test "should get title:string" do
    get :title:string
    assert_response :success
  end

  test "should get author:string" do
    get :author:string
    assert_response :success
  end

  test "should get likes:integer" do
    get :likes:integer
    assert_response :success
  end

  test "should get dislikes:integer" do
    get :dislikes:integer
    assert_response :success
  end

  test "should get description:string" do
    get :description:string
    assert_response :success
  end

end
