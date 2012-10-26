class CommentsController < ApplicationController
  def index
    @comments = Comment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end

  def create
    
    @page = Page.find(params[:page_id])
    @comment = @page.comments.create(params[:comment])
    # redirect_to page_path(@page)
    respond_to do |format|
      Notifier.comment_recieved(@comment).deliver
      format.html { redirect_to :back}
      format.js
      
    # format.json { render json: @page, status: :created, location: @page }
    #else
    #format.html { render action: "new" }
    #format.json { render json: @comment.errors, status: :unprocessable_entity }
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to comments_url }
      format.json { head :no_content }
    end
  end
end
