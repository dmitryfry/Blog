class ArticlesController < ApplicationController

before_filter :authenticate_user!, :only => [:new, :create]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
  end

  def create
    @article = Article.new(article_params)
    if @article.valid?
      @article.author = current_user.username
       @article.save
       redirect_to @article
    else
      render action: 'new'
    end

  end

  def edit
      @article = Article.find(params[:id])
    if current_user.username == @article.author

    else
      redirect_to articles_path
    end
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
       redirect_to @article
    else
      render action: 'edit'
    end
  end

  def destroy
        @article = Article.find(params[:id])
        if current_user.username == @article.author
          @article.destroy
          redirect_to articles_path
        else
          redirect_to articles_path
        end
  end

  private

  def article_params
      params.require(:article).permit(:title, :text)
  end

end
