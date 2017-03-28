class ArticlesController < ApplicationController

	before_filter :authenticate_user!, :only => [:new, :create, :update, :edit, :destroy]
	
	def index
		@article = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def edit	
		@article  = Article.find(params[:id])
		if @article.user_id != current_user.id
			flash[:error] = 'You are not permited to edit this article!!!'
			redirect_to @article
		end
	end

	def update
        @article  = Article.find(params[:id])
        if @article.update(article_params)
        	redirect_to @article
        else 
        	render :edit
        end
	end

	def new
		@user = current_user.id
	end
	def create
		@article = Article.new(article_params)
		@article.user_id = current_user.id

		if @article.save
			redirect_to @article
		else
			render :new
		end 
	end


	def destroy
		@article = Article.find(params[:id])
		if @article.user_id != current_user.id
			flash[:error] = 'You are not permited to delete this article!!!'
			redirect_to @article
		else
			@article.destroy
			redirect_to articles_path
		end
	end
	 
     private
     def  article_params
        params.require(:article).permit(:title, :text)
     end


end
