class ArticlesController < ApplicationController

  def show
    @articles = Article.all.group_by &:category
    @article = Article.find_by_url "articles/#{params[:month]}/#{params[:day]}/#{params[:year]}/#{params[:title]}"
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new params[:article]
    if @article.save
      redirect_to @article
    else
      p "did not save"
    end
  end

end
