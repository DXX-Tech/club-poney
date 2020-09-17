class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    
    if @group.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end
  
  def group_params
      params.require(:group).permit(:name)
  end

  def edit
    @group = Group.find_by(id: params[:id])
  end

  def show
    @group = Group.find_by(id: params[:id])
  end
end
