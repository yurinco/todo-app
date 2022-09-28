class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def show
    @article = Article.find(params[:id])
  end
end