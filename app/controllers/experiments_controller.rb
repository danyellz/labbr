class ExperimentsController < ApplicationController

  def new
    @experiment = Experiment.new
    #Give a variable a placeholder form @experiment
  end

  def create
    @experiment = Experiment.new(experiment_params)
    @experiment.user_id = current_user.id

    if @experiment.save
      p @experiment
      # redirect_to proposal_path(proposal.id)
      # redirect_to url_for(controller: 'proposals', action: 'show')
    else
      render :new
    end
  end

  def show
    @proposal = Proposal.find(params[:proposal_id])
    @experiment = Experiment.find(params[:id])
    #Shows specific experiment as well as observations specific to exp.
  end

  def edit
    @experiment = Experiment.find(params[:id])

  end

  def delete
    #Meh
  end


  private
    def experiment_params
      params.require(:experiment).permit(:title, :procedures, :results, :conclusion, :user_id, :proposal_id)
    end


end
