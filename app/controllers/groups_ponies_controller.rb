class GroupsPoniesController < ApplicationController
	def new
      @ponies = Pony.all
      @groups = Group.all
  		@groups_pony = GroupsPony.new
  end

  def create
 		@groups_pony = GroupsPony.new(groups_pony_params)
    @ponies = Pony.all
    @groups = Group.all
    unless GroupsPony.find_by(group_id:@groups_pony.group_id, pony_id:@groups_pony.pony_id)
 		  if @groups_pony.save
 			  redirect_to :controller => 'groups', :action => 'index'
 		  else
 			  render :action => 'new'
 		  end
    else
      render :action => 'new'
    end
  end
  
  def groups_pony_params
  	params.require(:groups_pony).permit(:pony_id, :group_id)
  end

	def destroy 
   		GroupsPony.find(params[:id]).destroy
   		redirect_to :controller => 'groups', :action => 'index'
	end
end
