class TargetsController < ApplicationController

  def index
  end

  def create
    @target = Target.new(target_params)
    if @target.save
      redirect_to @target
    else
      flash[:danger] = 'Something was incorrect'
      render 'new'
    end
  end

  def new
    @target = Target.new
  end

  def show
    @target = Target.find_by_id(params[:id])
  end

  def target_params
    params.require(:target).permit(:name, :business)
  end
end
