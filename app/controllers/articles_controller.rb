class ArticlesController < ApplicationController

	def new
		@article = Article.new
	end
  def create
		@article = Article.new(article_prams)
	  if @article.save
			flash[:notic] = "Article was sucessfully created"
			redirect_to article_path(@article)
	else
		render :new
		end
	end

  def show
		@article = Article.find(params[:id])
	end

  private
  def article_prams
		params.require(:article).permit(:title, :description)
	end

end