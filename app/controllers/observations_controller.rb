class ObservationsController < ApplicationController

  def new

    #Give a variable a placeholder form
  end

  def create
    #Create new observation
  end

  def show
    @experiment = Experiment.find(params[:experiment_id])
    @observation = Observation.find(params[:id])
    #Show comments for the observation
  end

  def edit
    #Stretch?
  end

  def delete
    #Stretch?
  end
end
