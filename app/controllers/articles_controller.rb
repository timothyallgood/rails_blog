class ArticlesController < ApplicationController
  def index # Controller action to show all articles
    @articles = Article.all
  end

  def show # Controller action to show one article using an id param passed from our route, /articles/:id
    @article = Article.find(params[:id])
  end
end
