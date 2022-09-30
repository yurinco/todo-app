class CommentsController < ApplicationController
  def new
    board = Boards.find(params[:board_id])
    @comment = article.comments.build
  end

  def create
    board = Boards.find(params[:board_id])
    @comment = board.comments.build(comment_params)
    if @comment.save
      redirect_to board_path(board), notice: 'コメントを追加'
    else
      flash.now[:error] = '更新できませんでした'
      render :new
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end