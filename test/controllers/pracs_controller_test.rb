require 'test_helper'

class PracsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prac = pracs(:one)
  end

  test "should get index" do
    get pracs_url
    assert_response :success
  end

  test "should get new" do
    get new_prac_url
    assert_response :success
  end

  test "should create prac" do
    assert_difference('Prac.count') do
      post pracs_url, params: { prac: { name: @prac.name } }
    end

    assert_redirected_to prac_url(Prac.last)
  end

  test "should show prac" do
    get prac_url(@prac)
    assert_response :success
  end

  test "should get edit" do
    get edit_prac_url(@prac)
    assert_response :success
  end

  test "should update prac" do
    patch prac_url(@prac), params: { prac: { name: @prac.name } }
    assert_redirected_to prac_url(@prac)
  end

  test "should destroy prac" do
    assert_difference('Prac.count', -1) do
      delete prac_url(@prac)
    end

    assert_redirected_to pracs_url
  end
end
