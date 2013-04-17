require 'test_helper'

class PeriodeAdhesionsControllerTest < ActionController::TestCase
  setup do
    @periode_adhesion = periode_adhesions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:periode_adhesions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create periode_adhesion" do
    assert_difference('PeriodeAdhesion.count') do
      post :create, periode_adhesion: { date_debut: @periode_adhesion.date_debut, date_fin: @periode_adhesion.date_fin, libelle: @periode_adhesion.libelle }
    end

    assert_redirected_to periode_adhesion_path(assigns(:periode_adhesion))
  end

  test "should show periode_adhesion" do
    get :show, id: @periode_adhesion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @periode_adhesion
    assert_response :success
  end

  test "should update periode_adhesion" do
    put :update, id: @periode_adhesion, periode_adhesion: { date_debut: @periode_adhesion.date_debut, date_fin: @periode_adhesion.date_fin, libelle: @periode_adhesion.libelle }
    assert_redirected_to periode_adhesion_path(assigns(:periode_adhesion))
  end

  test "should destroy periode_adhesion" do
    assert_difference('PeriodeAdhesion.count', -1) do
      delete :destroy, id: @periode_adhesion
    end

    assert_redirected_to periode_adhesions_path
  end
end
