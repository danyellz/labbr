class ProposalsController < ApplicationController

 def new
    #Give a variable a placeholder form @proposal
    @proposal = Proposal.new
  end

  def index
    @proposals = Proposal.all
  end

  def create
    #Add a new proposal
    @proposal = Proposal.create(proposal_params)
      u_id = current_user.id
      @proposal.user_id = u_id
      current_user.proposals << @proposal
      redirect_to proposals_path
  end

  def show
    #Lists specific proposal, along with all experiments associated
    @proposal = Proposal.find(params[:id])
    @experiments = @proposal.experiments
    @comments = @proposal.comments
  end

  def edit
    #Status stuff
    @proposal = Proposal.find(params[:id])
  end

  def delete
    #Remove it
    @proposal = Proposal.find(params[:id])
    @proposal.destroy
 
    redirect_to proposals_path
  end

  private
    def proposal_params
      params.require(:proposal).permit(:title, :summary, :hypothesis, :status, :user_id)
    end
end
