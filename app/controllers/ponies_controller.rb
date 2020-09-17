class PoniesController < ApplicationController
	def index
    @ponies = Pony.all
	end

  def show
    @pony = Pony.find_by(id: params[:id])
  end

	def new
  	@pony = Pony.new
  end

  def create
 		@pony = Pony.new(pony_params)
 		
 		if @pony.save
 			redirect_to :action => 'index'
 		else
 			render :action => 'new'
 		end
  end
  
  def pony_params
  	params.require(:pony).permit(:name, :mane, :fur, :eyes, :description)
  end

  def edit
  	@pony = Pony.find(params[:id])
  end

  def update
   	@pony = Pony.find(params[:id])

   	if @pony.update_attributes(pony_params)
      redirect_to :action => 'show', :id => @pony
   	else
      render :action => 'edit'
   	end
	end

	def delete
   		Pony.find(params[:id]).destroy
   		redirect_to :action => 'index'
	end

end
