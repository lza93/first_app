#require 'book_generator_client' 
#require 'httparty'
#requrie 'json'
class BooksController < ApplicationController
  #before_action :set_book, only: [:show, :edit, :update, :destroy]

  def new
  end
  def create
    #Get "http://www.sfu.ca/bin/wcm/course-outlines?{year}/{term}/{department}/{courseNumber}/{courseSection}"
    @book = Book.new(book_params)
    @book.save
    @response = HTTParty.get("http://www.sfu.ca/bin/wcm/course-outlines?#{'2016'}/#{'spring'}")
    @http_party_json = JSON.parse(@response.body)
    redirect_to @book 
  end

  def show
    @book = Book.find(params[:id])
  end 
  
  # GET /books
  # GET /books.json
  def index

    @response = HTTParty.get("http://www.sfu.ca/bin/wcm/course-outlines?2016/spring/cmpt/307/d100")
    @http_party_json = JSON.parse(@response.body)
    @result = @response.body
    pp @http_party_json_year
    respond_to do |format|
      format.json {render :json => JSON.parse(@result)}
      format.html # index.html.erb
  end
end

 private
    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:department, :coursenumber, :coursesection)
  end
end
  