require 'test_helper'

class MarathonsControllerTest < ActionController::TestCase
  setup do
    @marathon = marathons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:marathons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create marathon" do
    assert_difference('Marathon.count') do
      post :create, marathon: { city: @marathon.city, country: @marathon.country, date_description: @marathon.date_description, day: @marathon.day, event_date: @marathon.event_date, kind: @marathon.kind, latitude: @marathon.latitude, longitude: @marathon.longitude, month: @marathon.month, name: @marathon.name, part_of_the_world: @marathon.part_of_the_world, year: @marathon.year }
    end

    assert_redirected_to marathon_path(assigns(:marathon))
  end

  test "should show marathon" do
    get :show, id: @marathon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @marathon
    assert_response :success
  end

  test "should update marathon" do
    patch :update, id: @marathon, marathon: { city: @marathon.city, country: @marathon.country, date_description: @marathon.date_description, day: @marathon.day, event_date: @marathon.event_date, kind: @marathon.kind, latitude: @marathon.latitude, longitude: @marathon.longitude, month: @marathon.month, name: @marathon.name, part_of_the_world: @marathon.part_of_the_world, year: @marathon.year }
    assert_redirected_to marathon_path(assigns(:marathon))
  end

  test "should destroy marathon" do
    assert_difference('Marathon.count', -1) do
      delete :destroy, id: @marathon
    end

    assert_redirected_to marathons_path
  end
end
