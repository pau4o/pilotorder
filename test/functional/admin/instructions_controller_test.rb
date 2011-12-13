require 'test_helper'

class Admin::InstructionsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Instruction.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Instruction.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Instruction.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to admin_instruction_url(assigns(:instruction))
  end

  def test_edit
    get :edit, :id => Instruction.first
    assert_template 'edit'
  end

  def test_update_invalid
    Instruction.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Instruction.first
    assert_template 'edit'
  end

  def test_update_valid
    Instruction.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Instruction.first
    assert_redirected_to admin_instruction_url(assigns(:instruction))
  end

  def test_destroy
    instruction = Instruction.first
    delete :destroy, :id => instruction
    assert_redirected_to admin_instructions_url
    assert !Instruction.exists?(instruction.id)
  end
end
