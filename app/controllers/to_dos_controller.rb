class ToDosController < ApplicationController
  def new
    # Build a new ToDo object which is not yet saved to the database
    @to_do = ToDo.new
  end

  def create
    # Build new ToDo from the form parameters
    @to_do = ToDo.new(to_do_params)

    # Persist it to the database
    if @to_do.save
      redirect_to @to_do
    else
      render :new
    end
  end

  def show
    @to_do = ToDo.find(params[:id])
  end

  def index
    @to_dos = ToDo.all
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def to_do_params
    params.require(:to_do)
      .permit(
        :title
      )
  end
end
