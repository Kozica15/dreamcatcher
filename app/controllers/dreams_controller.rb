class DreamsController < ApplicationController

  def create
    @dream = Dream.new(dream_params)
    if @dream.save
      redirect_to dream_path(@dream)
    else
      render :new
    end
  end

  def show
    @dream = Dream.find(params[:id])
  end

  def new
    @dream = Dream.new
  end

  def index
    @dreams = Dream.all
  end

  def destroy
    @dream = Dream.find(params[:id])
    @dream.destroy
    redirect_to dreams_path
  end
  def edit
    @dream = Dream.find(params[:id])
  end

  private
# ici je définie ce que je vais permettre qu'on envoie dans la variable dream_params
  def dream_params
     params.require(:dream).permit( :description, :date)
  end

end
