class ArticlesController < ApplicationController
    before_action :set_articles, only: [:edit, :update, :show, :destroy]
    
    def index
        @articles = Article.all
    end
    
    def new
        @article = Article.new
    end
    
    def edit
       #@article = Article.find(params[:id]) 
    end
    
    def update
       #@article = Article.find(params[:id]) 
       if @article.update(article_params)
           flash[:notice] = "Article successfully updated"
            redirect_to article_path(@article)
        else 
            render 'edit'
        end
    end
    
    def create
        #render plain: params[:article].inspect
        @article = Article.new(article_params)
        if @article.save
            flash[:notice] = "Article was successfully saved"
            redirect_to articles_path(@article)
        else
            render 'new'
        end
        #@article.save
        #redirect_to article_path(@article)
    end
    
    def show
        #@article = Article.find(params[:id])
    end
    
    def destroy
       #@article = Article.find(params[:id]) 
       @article.destroy
       flash[:notice] = "Article was succesfully deleted"
       redirect_to articles_path
    end
    
    private
    def set_articles
        @article = Article.find(params[:id])
    end
    def article_params
        params.require(:article).permit(:title, :description)
    end
    
end