require 'test_helper'

class Admin::TugsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Tug.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Tug.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Tug.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to admin_tug_url(assigns(:tug))
  end

  def test_edit
    get :edit, :id => Tug.first
    assert_template 'edit'
  end

  def test_update_invalid
    Tug.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Tug.first
    assert_template 'edit'
  end

  def test_update_valid
    Tug.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Tug.first
    assert_redirected_to admin_tug_url(assigns(:tug))
  end

  def test_destroy
    tug = Tug.first
    delete :destroy, :id => tug
    assert_redirected_to admin_tugs_url
    assert !Tug.exists?(tug.id)
  end
end
