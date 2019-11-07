class ArticlesController < ApplicationController
    before_action :sign_in_required
    
    def index
        @articles = Article.order(created_at: :desc).page(params[:page]).per(10)
    end
    
    def show
        @article = Article.find(params[:id])
        @comments = @article.comments
        @comment = Comment.new
        @comment.user_id = current_user.id
        @comment.user_name = current_user.name

    end
    
    def new
        @article= Article.new
    end
    
    def edit
        @article = Article.find(params[:id])
    end
    
    def create
        @article=current_user.articles.build(article_params)
        
         if @article.save
            flash[:success] = '記事 が正常に投稿されました'
            redirect_to @article
         else
            flash.now[:danger] = '記事 が投稿されませんでした'
            render :new
         end
    end
    
    def update
        @article = Article.find(params[:id])
        
        if @article.update(article_params)
            flash[:success] = '記事 は正常に更新されました'
            redirect_to @article
        else
            flash.now[:danger] = '記事 は更新されませんでした'
            render :edit
        end
    end

    def destroy
         @article = Article.find(params[:id])
         @article.destroy
          
        flash[:success] = '記事 は正常に削除されました'
        redirect_to articles_url
        
    end
    
private

def article_params
 params.require(:article).permit(:title ,:body ,:image, :user_id , :article_id)   
end


end
