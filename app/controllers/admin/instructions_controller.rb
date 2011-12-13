class Admin::InstructionsController < ApplicationController
  def index
    @instructions = Instruction.all
  end

  def show
    @instruction = Instruction.find(params[:id])
  end

  def new
    @instruction = Instruction.new
  end

  def create
    @instruction = Instruction.new(params[:instruction])
    if @instruction.save
      redirect_to [:admin, @instruction], :notice => "Successfully created instruction."
    else
      render :action => 'new'
    end
  end

  def edit
    @instruction = Instruction.find(params[:id])
  end

  def update
    @instruction = Instruction.find(params[:id])
    if @instruction.update_attributes(params[:instruction])
      redirect_to [:admin, @instruction], :notice  => "Successfully updated instruction."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @instruction = Instruction.find(params[:id])
    @instruction.destroy
    redirect_to admin_instructions_url, :notice => "Successfully destroyed instruction."
  end
end
