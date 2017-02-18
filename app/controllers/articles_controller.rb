class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    #render plain: params[:article].inspect (will hash of submitted data)
    @article = Article.new(article_params)
    if @article.save
      flash[:notice] = "Article was successfully created"
      # String saved as a hash value for the :notice key
      redirect_to article_path(@article)
      # After saving, page is redirected to '/articles/:id' (id is taken from "@article" argument)  
    else
      render "new"
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  private

    def article_params
      params.require(:article).permit(:title, :description) 
      # Correspond to the ":title" and ":description" sections from the "@article" form
    end

end