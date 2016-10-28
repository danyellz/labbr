class CommentsController < ApplicationController

  def new
    #Add a comment placeholder for parent data.
  end

  def index
    #List comments
  end

  def create
    u_id = current_user.id
    p "*" * 100
    p params 
    p "*" * 100
    u_id = current_user.id
    @proposal = Proposal.find_by(id: params[:commentable_id])
    comment = Comment.new(comment_params)
    comment.user_id = u_id

    if comment.save
      redirect_to controller: 'proposals', action: 'show', id: @proposal.id
    end
  end

  def edit
    #Edit comments
  end

  def delete
    #Remove comments
  end

  def comment_params
    params.require(:comment).permit(:body, :commentable_id, :commentable_type, :user_id)
  end

end
