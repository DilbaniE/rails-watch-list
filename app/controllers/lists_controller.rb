class ListsController < ApplicationController
  #before_action :set_list, only: [:show, :new, :create, :index]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @list = List.find(params[:id])
  end

   def update
    @list = List.find(params[:id])
    @list.update(list_params)
    redirect_to root_path
   end

  def show
    @list = List.find(params[:id])
  end

  private

  def list_params
    params.require(:list).permit(:name, :image_url)
  end
end
