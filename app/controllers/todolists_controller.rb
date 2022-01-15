class TodolistsController < ApplicationController
  def new
  end
  @list=List.new
  def index
    @lists=List.all
  end

def create
  list=List.new(list_params)
  list.save
  redirect_to'/top'
end

 private
  def list_params
   params.require(:list).permit(:title,:body)
 end