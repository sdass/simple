class ArticlesController < ApplicationController
#require 'byebug'
def index
	byebug #for debugging
	puts "<<<<<____in index_______>>>>>>>>>>"
	@articles = Article.all
end

def new
	puts "<<<<<____in new_______>>>>>>>>>>"
end
	
=begin
	multiline comment
def create
	puts "<<<<<____in create_______>>>>>>>>>>"	
	particle = params[:article]
	puts 'Title: ' + particle['title'] 
	puts 'Content: ' + particle['textcontnet'] 
	
	render plain: params[:article].inspect
end
=end

def create
	puts "<<<<<____in create_______>>>>>>>>>>"	
	particle = params[:article]
	puts 'Title: ' + particle['title'] 
	puts 'Content: ' + particle['textcontent'] 
	
	#@article = Article.new(params[:article])
	@article = Article.new(params.require(:article).permit(:title, :textcontent))
	 if 
	 	@article.save
	 	redirect_to @article
	 else
	 	render 'new'
	 end


	#render plain: params[:article].inspect
end

def show
	@article = Article.find(params[:id])

end
	

end
