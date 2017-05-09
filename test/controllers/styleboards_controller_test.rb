require 'test_helper'

class StyleboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @styleboard = styleboards(:one)
  end

  test "should get index" do
    get styleboards_url
    assert_response :success
  end

  test "should get new" do
    get new_styleboard_url
    assert_response :success
  end

  test "should create styleboard" do
    assert_difference('Styleboard.count') do
      post styleboards_url, params: { styleboard: { description: @styleboard.description, public: @styleboard.public, user_id: @styleboard.user_id } }
    end

    assert_redirected_to styleboard_url(Styleboard.last)
  end

  test "should show styleboard" do
    get styleboard_url(@styleboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_styleboard_url(@styleboard)
    assert_response :success
  end

  test "should update styleboard" do
    patch styleboard_url(@styleboard), params: { styleboard: { description: @styleboard.description, public: @styleboard.public, user_id: @styleboard.user_id } }
    assert_redirected_to styleboard_url(@styleboard)
  end

  test "should destroy styleboard" do
    assert_difference('Styleboard.count', -1) do
      delete styleboard_url(@styleboard)
    end

    assert_redirected_to styleboards_url
  end
end
