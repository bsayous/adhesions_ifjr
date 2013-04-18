require 'test_helper'

class TypeAdhesionsControllerTest < ActionController::TestCase
  setup do
    @type_adhesion = type_adhesions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:type_adhesions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create type_adhesion" do
    assert_difference('TypeAdhesion.count') do
      post :create, type_adhesion: { droit_vote: @type_adhesion.droit_vote, libelle: @type_adhesion.libelle, montant: @type_adhesion.montant, type_comptable: @type_adhesion.type_comptable }
    end

    assert_redirected_to type_adhesion_path(assigns(:type_adhesion))
  end

  test "should show type_adhesion" do
    get :show, id: @type_adhesion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @type_adhesion
    assert_response :success
  end

  test "should update type_adhesion" do
    put :update, id: @type_adhesion, type_adhesion: { droit_vote: @type_adhesion.droit_vote, libelle: @type_adhesion.libelle, montant: @type_adhesion.montant, type_comptable: @type_adhesion.type_comptable }
    assert_redirected_to type_adhesion_path(assigns(:type_adhesion))
  end

  test "should destroy type_adhesion" do
    assert_difference('TypeAdhesion.count', -1) do
      delete :destroy, id: @type_adhesion
    end

    assert_redirected_to type_adhesions_path
  end
end
