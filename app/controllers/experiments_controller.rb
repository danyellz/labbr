class ExperimentsController < ApplicationController
  FAKE_USER = User.new(email: 'fake@fakerson.com')
  attr_accessor :proposal
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
    @experiment = Experiment.find(params[:id])

  end

  def create
    @experiment = Experiment.new(experiment_params)

    if @experiment.save
      # redirect_to proposal_path(proposal.id)
      # redirect_to url_for(controller: 'proposals', action: 'show')
    else
      render :new
    end
  end



  def delete
    #Meh
  end



  private
    def experiment_params
      params.permit(:id, :proposal_id, :title, :procedures, :results, :conclusion, :user_id)
    end
end
