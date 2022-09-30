class BoardsController < ApplicationController
  def index
    @boards = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end
end