class CommentsController < ApplicationController
    def create
        # get article. and spawn comment by article. save comment. go back to show article page.
        # @article = Article.find(params[])
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(params.require(:comment).permit(:commenter, :body))
        @comment.save
        redirect_to @article
    end
end
