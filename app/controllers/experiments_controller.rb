class ExperimentsController < ApplicationController

  def new
    #Give a variable a placeholder form @experiment
  end

  def create
    #Create an experiment

  end

  def show
    @proposal = Proposal.find(params[:proposal_id])
    @experiment = Experiment.find(params[:id])
    #Shows specific experiment as well as observations specific to exp.
  end

  def edit
    #Meh
  end

  def delete
    #Meh
  end

end
