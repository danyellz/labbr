class CommentsController < ApplicationController
  def new
    @comment = Comment.new

    #Add a comment placeholder for parent data.
  end

  def index
    #List comments
  end

  def create
    @comment = Comment.new(comment_params)

      if @comment.save
        redirect_to @experiment
      else
         render :new
    end

    #Post new comment
  end

  def edit
    #Edit comments
  end

  def delete
    #Remove comments
  end
  private
  def comment_params
    params.fetch(:comment, {})
  end
end
