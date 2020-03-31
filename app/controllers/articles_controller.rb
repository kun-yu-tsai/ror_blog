class ArticlesController < ApplicationController
    def create
        @article = Article.new(permit_params)
        @article.save
        redirect_to @article
    end

    def show
        @article = Article.find(params[:id])
    end

    private
        def permit_params
            params.require(:article).permit(:title, :text)
        end
end
