require 'test_helper'

class ShipsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Ship.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Ship.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Ship.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to ship_url(assigns(:ship))
  end

  def test_edit
    get :edit, :id => Ship.first
    assert_template 'edit'
  end

  def test_update_invalid
    Ship.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Ship.first
    assert_template 'edit'
  end

  def test_update_valid
    Ship.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Ship.first
    assert_redirected_to ship_url(assigns(:ship))
  end

  def test_destroy
    ship = Ship.first
    delete :destroy, :id => ship
    assert_redirected_to ships_url
    assert !Ship.exists?(ship.id)
  end
end
