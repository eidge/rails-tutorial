class ToDoItemsController < ApplicationController
  before_action :set_to_do

  def new
    @to_do_item = @to_do.to_do_items.build
  end

  def create
    @to_do_item = @to_do.to_do_items.build(to_do_item_params)
    if @to_do_item.save
      redirect_to to_do_path(@to_do), flash: { success: 'Saved successfully' }
    else
      render :new
    end
  end

  def edit
  end

  def destroy
  end

  private

  def to_do_item_params
    params.require(:to_do_item)
      .permit(:description)
  end

  def set_to_do
    @to_do = ToDo.find(params[:to_do_id])
  end
end
