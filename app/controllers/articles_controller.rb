class ArticlesController < ApplicationController
    def index
        # get all articles from db. make that as an instance variable. then we can access that in our erb.
        @articles = Article.all

    end

    def create
        @article = Article.new(permit_params)
        if @article.save
            redirect_to @article  # this will hit /articles url
        else
            render 'new'
        end
    end

    def show
        @article = Article.find(params[:id])
    end

    private
        def permit_params
            params.require(:article).permit(:title, :text)
        end
end
