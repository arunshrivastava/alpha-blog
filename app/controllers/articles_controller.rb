class ArticlesController < ApplicationController

	def new
		@article = Article.new
	end
  def create
		@article = Article.new(article_prams)
		@article.save
		redirect_to article_show(@article)
	end

  private
  def article_prams
		params.require(:article).permit(:title, :description)
	end

end