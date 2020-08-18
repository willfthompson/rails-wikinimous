class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    Article.create(params.require('article').permit(:title, :content))
    redirect_to articles_path
  end

  def destroy
    @article = @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  def update
    article = Article.find(params[:id])
    article.update(params.require('article').permit(:title, :content))
    redirect_to articles_path
  end
end
