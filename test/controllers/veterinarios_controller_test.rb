require 'test_helper'

class VeterinariosControllerTest < ActionController::TestCase
  setup do
    @veterinario = veterinarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:veterinarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create veterinario" do
    assert_difference('Veterinario.count') do
      post :create, veterinario: { asistencia: @veterinario.asistencia, cargo: @veterinario.cargo, nombre: @veterinario.nombre }
    end

    assert_redirected_to veterinario_path(assigns(:veterinario))
  end

  test "should show veterinario" do
    get :show, id: @veterinario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @veterinario
    assert_response :success
  end

  test "should update veterinario" do
    patch :update, id: @veterinario, veterinario: { asistencia: @veterinario.asistencia, cargo: @veterinario.cargo, nombre: @veterinario.nombre }
    assert_redirected_to veterinario_path(assigns(:veterinario))
  end

  test "should destroy veterinario" do
    assert_difference('Veterinario.count', -1) do
      delete :destroy, id: @veterinario
    end

    assert_redirected_to veterinarios_path
  end
end
