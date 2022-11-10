require 'test_helper'

class SheetRoutesControllerTest < ActionController::TestCase
  setup do
    @sheet_route = sheet_routes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sheet_routes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sheet_route" do
    assert_difference('SheetRoute.count') do
      post :create, sheet_route: { code: @sheet_route.code, fecha: @sheet_route.fecha, references: @sheet_route.references, truck_id: @sheet_route.truck_id, trucks: @sheet_route.trucks }
    end

    assert_redirected_to sheet_route_path(assigns(:sheet_route))
  end

  test "should show sheet_route" do
    get :show, id: @sheet_route
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sheet_route
    assert_response :success
  end

  test "should update sheet_route" do
    patch :update, id: @sheet_route, sheet_route: { code: @sheet_route.code, fecha: @sheet_route.fecha, references: @sheet_route.references, truck_id: @sheet_route.truck_id, trucks: @sheet_route.trucks }
    assert_redirected_to sheet_route_path(assigns(:sheet_route))
  end

  test "should destroy sheet_route" do
    assert_difference('SheetRoute.count', -1) do
      delete :destroy, id: @sheet_route
    end

    assert_redirected_to sheet_routes_path
  end
end
