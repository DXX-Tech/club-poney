class PoniesController < ApplicationController
  def index
    @ponies = Pony.all
  end

  def show
    @pony = Pony.find_by(id: params[:id])
  end
end
