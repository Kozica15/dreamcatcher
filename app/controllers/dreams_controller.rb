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

  private
# ici je définie ce que je vais permettre qu'on envoie dans la variable dream_params
  def dream_params
     params.require(:dream).permit( :description, :date)
  end

end
