class ExperimentsController < ApplicationController
  def show
    @proposal = Proposal.find(params[:proposal_id])
    @experiment = Experiment.find(params[:id])
    #Shows specific experiment as well as observations specific to exp.
  end
  def new
    @experiment = Experiment.new
    #Give a variable a placeholder form @experiment
  end

    def edit
      # @experiment = Experiment.find(params[:id])
      #Meh
    end

  def create
    @experiment = Experiment.new(experiment_params)
    #will need to pass proposal id associated with the new experiment, then save it do the DB
    #Create an experiment
  end

  def destroy

    #Meh
  end
end
