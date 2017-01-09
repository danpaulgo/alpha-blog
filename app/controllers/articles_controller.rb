class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    #render plain: params[:article].inspect (will hash of submitted data)
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_show(@article)
    # After saving, page is redirected to '/articles/:id' (id is taken from "@article" argument)
  end

  private

    def article_params
      params.require(:article).permit(:title, :description) 
      # Correspond to the ":title" and ":description" sections from the "@article" form
    end

end