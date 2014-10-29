#coding:utf-8
class ArticlesController < ApplicationController
	include ArticlesHelper

	def index
		@articles = Article.all
		
	end

	def new
		@article = Article.new
	end

	def create
		@article = Article.new(article_params)
		@article.save
		flash.notice = "Стаття '#{@article.title}' збережена!"

		redirect_to article_path(@article)
	end

	def edit
		@article = Article.find(params[:id])
		
		
	end

	def update
	@article = Article.find(params[:id])
	@article.update(article_params)
	@tag = Tag.new

	flash.notice = "Стаття '#{@article.title}' оновлена!"

	redirect_to articles_path(@article) end

	def show
		@article = Article.find(params[:id])
		@comment = Comment.new
		@comment.article_id = @article.id
	end

	def destroy
		@article = Article.destroy(params[:id])
		flash.notice = "Статтю '#{@article.title}' видалено!"

		redirect_to articles_path
	end
end