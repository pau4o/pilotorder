require 'test_helper'

class Admin::CriteriaControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Criteria.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Criteria.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Criteria.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to admin_criteria_url(assigns(:criteria))
  end

  def test_edit
    get :edit, :id => Criteria.first
    assert_template 'edit'
  end

  def test_update_invalid
    Criteria.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Criteria.first
    assert_template 'edit'
  end

  def test_update_valid
    Criteria.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Criteria.first
    assert_redirected_to admin_criteria_url(assigns(:criteria))
  end

  def test_destroy
    criteria = Criteria.first
    delete :destroy, :id => criteria
    assert_redirected_to admin_criteria_url
    assert !Criteria.exists?(criteria.id)
  end
end
