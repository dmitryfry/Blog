class CommentsController < ApplicationController

  before_filter :authenticate_user!, :only => [:create]

  def create
    @article = Article.find(params[:article_id])
    @comments = @article.comments.new(comment_params)
    @comments.author = current_user.username
    @comments.save

    redirect_to article_path(@article)
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
