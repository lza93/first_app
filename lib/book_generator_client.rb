require 'httparty' 
require 'json'

class BookGeneratorClient 
	JSON_CONTENT_TYPE="application/json(content)"
	include HTTParty
	base_uri 'http://www.sfu.ca/bin/wcm/course-outlines?'
	default_params  :output => 'json'
	format :json

	class << self

		def Get_book (year, term, department, coursenumber, coursesection)
			get("base_url(book(#{year},#{term},#{department},#{coursenumber},#{coursesection})")
		end

		def Get_year(year)
			year = get("base_url(book(#{year})")
	        #if response.success?
				#result = JSON.parse(response.body)
			puts year				#book_info = response.parsed_response[""].values_at("id")
		end

		def Get_term(year,term)
			term = get("base_url(book(#{year},#{term})")
			puts term
		end

		def Get_department(year,term,department)
			deparment = get("base_url(book(#{year},#{term},#{department}")
			puts department
		end

		def Get_coursenumber(year,term,department,options = {})
			coursenumber = get ("base_url(book(#{year},#{term},#{department},#{coursenumber})")
			puts coursenumber
		end

		def Get_coursesection(year,term,department,coursenumber, options = {})
			coursesection = get ("base_url(book(#{year},#{term},#{department},#{coursenumber}),#{coursesection}")
			puts coursesection
		end
	end
end




	#def self.year(year)
		#get('/course-outlines?year', :query => {:year=>year,:output => 'json'})
	#end

	#def self.term(year,term)
		#get('/course-outlines?year/term',:query => {:term=>term,:output => 'json'})
	#end

	#def self.department(year,term,department)
	#	get('/course-outlines?year/term/department',:query => {:department=>department,:output => 'json'})
	#end

	#def self.coursenumber(year,term,department,coursenumber)
	#	get('/course-outlines?year/term/department/coursenumber',:query => {:coursenumber=>courseNumber,:output => 'json'})
	#end

	#def self.coursesection(cyear,term,department,coursenumber,coursesection)
	#	get('/course-outlines?year/term/department/coursenumber/coursesection',:query => {:coursesection=>coursesection,:output => 'json'})
	#end

	#def self.textbook(year,term,department,coursenumber,coursesection,textbook)
	#	get('/course-outlines?year/term/department/coursenumber/coursesection',:query =>{:term=>term,:department=>department,:coursenumber=>courseNumber,:coursesection=>coursesection,:required_textbook=>textbook,:output => 'json'})
	#end
#end

#puts UrlApi.coursesection('2015','summer','cmpt','110','c100').inspect

	#def unique_url
		#result=HttParty.get(API_URL)
		#json= JSON.parse(result.body)
		#json['url']
	
    #self.year=year
#end

#def year
	#response=self.class.get("/year/#{value}.json")
	#if response.success?
		#response
	#else
		#raise response.response
	#end
#end
#def year
	
#end
#def term(options = {})
#	self.class.get('/year/term',options)
#end
#
#def department(options = {})
#	self.class.get('/year/term/department',options)
#end

#def coursenumber(options = {})
#	self.class.get('/year/term/department/coursenumber',options)
#end

#def coursesection(options = {})
#	self.class.get('/year/term/department/coursnumber/coursesection',options)
#end

#def textbook(options = {})
#	self.class.get('/year/term/department/coursnumber/coursesection',options)
#	echo json[requiredText]
#end



#result_year=.get("http://www.sfu.ca/bin/wcm/course-outlines")
#year=JSON.parse(result_year.body)
	#book_accessor :year, :term, :department, :coursenumber,:coursesection,:required_textbook
#def initialize(year,term,department,coursenumber,coursesection,textbook)
	

#book=Book.new(2015)
#puts book

#@options ={query:{year: year,term: term,department: department,coursenumber: coursenumber,coursesection: coursesection,required_textbook: required_textbook}}
#end

#def department
	#self.class.get("/course-outlines?/{year}/{term}/{department}/{courseNumber}",@options)
#end

#def required_textbook
	#self.class.get("/course-outlines?/{year}/{term}/{department}/{courseNumber}/{courseSection}",@options)

#?{year}/{term}/{department}/{coursenumber}/{coursesection}"
#class Book <Activecord::Base
#end

#books = Book.find(:all)
#p books.collect(&:title)