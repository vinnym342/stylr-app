require 'test_helper'

class StyleboardLikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @styleboard_like = styleboard_likes(:one)
  end

  test "should get index" do
    get styleboard_likes_url
    assert_response :success
  end

  test "should get new" do
    get new_styleboard_like_url
    assert_response :success
  end

  test "should create styleboard_like" do
    assert_difference('StyleboardLike.count') do
      post styleboard_likes_url, params: { styleboard_like: { styleboard_id: @styleboard_like.styleboard_id, user_id: @styleboard_like.user_id } }
    end

    assert_redirected_to styleboard_like_url(StyleboardLike.last)
  end

  test "should show styleboard_like" do
    get styleboard_like_url(@styleboard_like)
    assert_response :success
  end

  test "should get edit" do
    get edit_styleboard_like_url(@styleboard_like)
    assert_response :success
  end

  test "should update styleboard_like" do
    patch styleboard_like_url(@styleboard_like), params: { styleboard_like: { styleboard_id: @styleboard_like.styleboard_id, user_id: @styleboard_like.user_id } }
    assert_redirected_to styleboard_like_url(@styleboard_like)
  end

  test "should destroy styleboard_like" do
    assert_difference('StyleboardLike.count', -1) do
      delete styleboard_like_url(@styleboard_like)
    end

    assert_redirected_to styleboard_likes_url
  end
end
