class BoardsController < ApplicationController
  def index
    @boards = Bo.all
  end

  def show
    @article = Article.find(params[:id])
  end
end