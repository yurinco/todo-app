class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def show
    @board = Boa.find(params[:id])
  end
end