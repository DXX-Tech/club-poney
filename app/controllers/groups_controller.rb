class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def edit
    @group = Group.find_by(id: params[:id])
  end

  def show
    @group = Group.find_by(id: params[:id])
  end
end
