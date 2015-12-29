class TargetsController < ApplicationController

  def index
    @targets = Target.all
  end

  def create
    @target = EmailPermutator.new(target_params).create_target
    unless @target.class.ancestors.include?(ActiveRecord::Base)
      render 'what' 
      return false
    end
    if @target.save
      redirect_to @target
    else
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
