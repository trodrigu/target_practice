class TargetsController < ApplicationController

  def index
    @targets = Target.all
  end

  def create
    @target = EmailPermutator.new(target_params).create_target
    if @target.save
      redirect_to @target
    else
      #flash[:danger] = 'Something was incorrect'
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
    #create_first_and_last_name
    params.require(:target).permit(:first_name, :last_name, :business, :email)
  end

  private

  def create_first_and_last_name
    name = params[:target].delete(:name)
    first_name = name.split.first
    last_name = name.split.second
    params[:target].merge!(first_name: first_name, last_name: last_name)
  end

end
