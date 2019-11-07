class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @article = Article.find(params[:article_id])
    @comment.article_id = @article.id
    @comment.user_name = current_user.name

    
    if @comment.save
        flash[:success] = "コメントしました"
      redirect_back(fallback_location: root_path)
    else
        flash[:danger] = "コメントできません"
      redirect_back(fallback_location: root_path)
    end
  end
  
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    
    flash[:success] = 'コメント は正常に削除されました'
        redirect_to @article
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :user_id, :created_at, :updated_at, :article_id)
  end
end
