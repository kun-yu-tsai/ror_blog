class CommentsController < ApplicationController
    def create
        # get article. and spawn comment by article. save comment. go back to show article page.
        # @article = Article.find(params[])
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(params.require(:comment).permit(:commenter, :body))
        @comment.save
        redirect_to @article
    end

    def destroy
        # Another way to write it.
        # @comment = Comment.find(params[:id])
        # @comment.destroy
        # redirect_to article_path(params[:article_id])

        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to @article
    end
end
