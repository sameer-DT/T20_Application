require "test_helper"

class DummiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dummy = dummies(:one)
  end

  test "should get index" do
    get dummies_url
    assert_response :success
  end

  test "should get new" do
    get new_dummy_url
    assert_response :success
  end

  test "should create dummy" do
    assert_difference("Dummy.count") do
      post dummies_url, params: { dummy: { age: @dummy.age, description: @dummy.description, is_active: @dummy.is_active, is_captain: @dummy.is_captain, name: @dummy.name, position: @dummy.position, role: @dummy.role, team_id: @dummy.team_id } }
    end

    assert_redirected_to dummy_url(Dummy.last)
  end

  test "should show dummy" do
    get dummy_url(@dummy)
    assert_response :success
  end

  test "should get edit" do
    get edit_dummy_url(@dummy)
    assert_response :success
  end

  test "should update dummy" do
    patch dummy_url(@dummy), params: { dummy: { age: @dummy.age, description: @dummy.description, is_active: @dummy.is_active, is_captain: @dummy.is_captain, name: @dummy.name, position: @dummy.position, role: @dummy.role, team_id: @dummy.team_id } }
    assert_redirected_to dummy_url(@dummy)
  end

  test "should destroy dummy" do
    assert_difference("Dummy.count", -1) do
      delete dummy_url(@dummy)
    end

    assert_redirected_to dummies_url
  end
end
