require 'test_helper'

class Admin::AuthLogsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => AuthLog.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    AuthLog.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    AuthLog.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to admin_auth_log_url(assigns(:auth_log))
  end

  def test_edit
    get :edit, :id => AuthLog.first
    assert_template 'edit'
  end

  def test_update_invalid
    AuthLog.any_instance.stubs(:valid?).returns(false)
    put :update, :id => AuthLog.first
    assert_template 'edit'
  end

  def test_update_valid
    AuthLog.any_instance.stubs(:valid?).returns(true)
    put :update, :id => AuthLog.first
    assert_redirected_to admin_auth_log_url(assigns(:auth_log))
  end

  def test_destroy
    auth_log = AuthLog.first
    delete :destroy, :id => auth_log
    assert_redirected_to admin_auth_logs_url
    assert !AuthLog.exists?(auth_log.id)
  end
end
