class ArticlesController < ApplicationController
  def index # Controller action to show all articles
    @articles = Article.all
  end

  def show # Controller action to show one article using an id param passed from our route, /articles/:id
    @article = Article.find(params[:id])
  end

  def new # Instantaites empty article, will render our form view
    @article = Article.new
  end

  def create #  Instantaites article and attempts to save it
    @article = Article.new(title: "...", body: '...')

    if @article.save # Saves article, if successful redirects to article show page
      redirect_to @article
    else # If unsuccesful, redisplay form
      render :new 
  end

end
