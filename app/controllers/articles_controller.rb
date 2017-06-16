class ArticlesController < ApplicationController
  before_action :all_tasks, only: [:index, :create, :update,:destroy]	
  before_action :set_tasks, only: [:edit, :update, :destroy]
	respond_to :html, :js
	def index
	end
	def new
		@article = Article.new
	end
	def create
		@article = Article.create(article_params)
	end
	def edit
	end
	def update
		@article.update(article_params)
	end
	def destroy
		@article.destroy
	end
	private
	def article_params
		params.require(:article).permit(:title,:description)
	end	
	def all_tasks
		@articles = Article.all
	end
	def set_tasks
    @article = Article.find(params[:id])
  end
end
