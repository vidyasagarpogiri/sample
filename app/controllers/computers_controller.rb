class ComputersController < ApplicationController
	before_action :find,only: [:edit,:show,:update,:destroy]
  def index
  	@computers = Computer.all
  end

  def find
  	@computer = Computer.find(params[:id])
  end

  def new
  	@computer = Computer.new
  end

  def create
  	@computer = Computer.create(computer_params)
  	redirect_to computers_path
  end

  def edit
  	
  end

  def update
  	@computer.update(computer_params)
  	redirect_to computers_path
  end

  def destroy
  	@computer.destroy
  	redirect_to computers_path
  end

  def show

  end

  private

  def computer_params
  	params.require(:computer).permit(:brand, :price) 
  end
end

