require 'test_helper'

class SheetRouteDetailsControllerTest < ActionController::TestCase
  setup do
    @sheet_route_detail = sheet_route_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sheet_route_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sheet_route_detail" do
    assert_difference('SheetRouteDetail.count') do
      post :create, sheet_route_detail: { comb_glns: @sheet_route_detail.comb_glns, comb_km: @sheet_route_detail.comb_km, employee_id: @sheet_route_detail.employee_id, employees: @sheet_route_detail.employees, fecha: @sheet_route_detail.fecha, km_in: @sheet_route_detail.km_in, km_out: @sheet_route_detail.km_out, lugar: @sheet_route_detail.lugar, mant_km: @sheet_route_detail.mant_km, observa: @sheet_route_detail.observa, references: @sheet_route_detail.references, total: @sheet_route_detail.total }
    end

    assert_redirected_to sheet_route_detail_path(assigns(:sheet_route_detail))
  end

  test "should show sheet_route_detail" do
    get :show, id: @sheet_route_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sheet_route_detail
    assert_response :success
  end

  test "should update sheet_route_detail" do
    patch :update, id: @sheet_route_detail, sheet_route_detail: { comb_glns: @sheet_route_detail.comb_glns, comb_km: @sheet_route_detail.comb_km, employee_id: @sheet_route_detail.employee_id, employees: @sheet_route_detail.employees, fecha: @sheet_route_detail.fecha, km_in: @sheet_route_detail.km_in, km_out: @sheet_route_detail.km_out, lugar: @sheet_route_detail.lugar, mant_km: @sheet_route_detail.mant_km, observa: @sheet_route_detail.observa, references: @sheet_route_detail.references, total: @sheet_route_detail.total }
    assert_redirected_to sheet_route_detail_path(assigns(:sheet_route_detail))
  end

  test "should destroy sheet_route_detail" do
    assert_difference('SheetRouteDetail.count', -1) do
      delete :destroy, id: @sheet_route_detail
    end

    assert_redirected_to sheet_route_details_path
  end
end
