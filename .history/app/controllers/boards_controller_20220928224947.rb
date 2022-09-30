class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def show
    @board = Article.find(params[:id])
  end
end