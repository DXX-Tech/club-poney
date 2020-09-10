class ImportsController < ApplicationController
  def index
    @imports = Import.all
  end

  def new
    @import = Import.new
  end

  def edit
    @import = Import.find_by(id: params[:id])
  end

  def show
    @import = Import.find_by(id: params[:id])
  end
end
