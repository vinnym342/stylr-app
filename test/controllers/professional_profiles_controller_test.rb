require 'test_helper'

class ProfessionalProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @professional_profile = professional_profiles(:one)
  end

  test "should get index" do
    get professional_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_professional_profile_url
    assert_response :success
  end

  test "should create professional_profile" do
    assert_difference('ProfessionalProfile.count') do
      post professional_profiles_url, params: { professional_profile: { message_price: @professional_profile.message_price, user_id: @professional_profile.user_id } }
    end

    assert_redirected_to professional_profile_url(ProfessionalProfile.last)
  end

  test "should show professional_profile" do
    get professional_profile_url(@professional_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_professional_profile_url(@professional_profile)
    assert_response :success
  end

  test "should update professional_profile" do
    patch professional_profile_url(@professional_profile), params: { professional_profile: { message_price: @professional_profile.message_price, user_id: @professional_profile.user_id } }
    assert_redirected_to professional_profile_url(@professional_profile)
  end

  test "should destroy professional_profile" do
    assert_difference('ProfessionalProfile.count', -1) do
      delete professional_profile_url(@professional_profile)
    end

    assert_redirected_to professional_profiles_url
  end
end
