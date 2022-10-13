require 'test_helper'

class AbastesControllerTest < ActionController::TestCase
  setup do
    @abaste = abastes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:abastes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create abaste" do
    assert_difference('Abaste.count') do
      post :create, abaste: { code: @abaste.code, comments: @abaste.comments, customer_id: @abaste.customer_id, employee_id: @abaste.employee_id, fecha: @abaste.fecha, galones: @abaste.galones, horometro: @abaste.horometro, km: @abaste.km, user_id: @abaste.user_id, vehiculo_id: @abaste.vehiculo_id }
    end

    assert_redirected_to abaste_path(assigns(:abaste))
  end

  test "should show abaste" do
    get :show, id: @abaste
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @abaste
    assert_response :success
  end

  test "should update abaste" do
    patch :update, id: @abaste, abaste: { code: @abaste.code, comments: @abaste.comments, customer_id: @abaste.customer_id, employee_id: @abaste.employee_id, fecha: @abaste.fecha, galones: @abaste.galones, horometro: @abaste.horometro, km: @abaste.km, user_id: @abaste.user_id, vehiculo_id: @abaste.vehiculo_id }
    assert_redirected_to abaste_path(assigns(:abaste))
  end

  test "should destroy abaste" do
    assert_difference('Abaste.count', -1) do
      delete :destroy, id: @abaste
    end

    assert_redirected_to abastes_path
  end
end
