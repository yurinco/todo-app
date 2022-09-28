class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    Article
  end
end