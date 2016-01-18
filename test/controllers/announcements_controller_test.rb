require 'test_helper'

class AnnouncementsControllerTest < ActionController::TestCase
  setup do
    @announcement = announcements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:announcements)
  end

  test "should create announcement" do
    assert_difference('Announcement.count') do
      post :create, announcement: { text: @announcement.text }
    end

    assert_response 201
  end

  test "should show announcement" do
    get :show, id: @announcement
    assert_response :success
  end

  test "should update announcement" do
    put :update, id: @announcement, announcement: { text: @announcement.text }
    assert_response 204
  end

  test "should destroy announcement" do
    assert_difference('Announcement.count', -1) do
      delete :destroy, id: @announcement
    end

    assert_response 204
  end
end
