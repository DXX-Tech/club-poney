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
      params.require(:group).permit(:name, :description)
  end

  def edit
    @group = Group.find_by(id: params[:id])
  end
  
  def update
    @group = Group.find(params[:id])

    if @group.update_attributes(group_params)
      redirect_to :action => 'show', :id => @group
    else
      render :action => 'edit'
    end
  end

  def show
    @group = Group.find_by(id: params[:id])
  end
  def destroy
      Group.find_by(id: params[:id]).delete
      GroupsPony.where(group_id:params[:id]).delete_all
      redirect_to :action => 'index'
  end

end
