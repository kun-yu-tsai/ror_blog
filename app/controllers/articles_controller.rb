class ArticlesController < ApplicationController
    def index
        # get all articles from db. make that as an instance variable. then we can access that in our erb.
        @articles = Article.all

    end

    def new 
        @article = Article.new
    end

    def edit
        @article = Article.find(params[:id])
    end

    def update
        @article = Article.find(params[:id])

        if @article.update(permit_params)
            redirect_to @article  # this will hit GET /articles/id 
        else
            render 'edit'
        end
    end

    def create
        @article = Article.new(permit_params)
        if @article.save
            redirect_to @article  # this will hit GET /articles/id 
        else
            render 'new'
        end
    end

    def destroy
        @article = Article.find(params[:id])
        @article.destroy
        redirect_to articles_path
    end

    def show
        @article = Article.find(params[:id])
    end

    private
        def permit_params
            params.require(:article).permit(:title, :text)
        end
end
