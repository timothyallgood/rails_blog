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
    @article = Article.new(article_params)

    if @article.save # Saves article, if successful redirects to article show page
      redirect_to @article
    else # If unsuccesful, redisplay form
      render :new 
    end
  end

  def edit # Finds article to edit for edit form
    @article = Article.find(params[:id])
  end

  def update # Finds article and attempts to update it
    @article = Article.find(params[:id])

    if @article.update(article_params) # Updates article, if successful redirects to article show page
      redirect_to @article
    else # If unsuccesful, redisplay form
      render :edit
    end
  end

  def destroy # Deletes article
    @article = Article.find(params[:id])
    @article.destroy
    #redirect to home page after delete
    redirect_to root_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end

end
