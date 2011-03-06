require 'rubygems'
require 'readability'
require 'open-uri'
require 'sinatra'

get '/' do
	'Welcome to Article Reader'
end

get '/read/*' do
	doc = open(params[:splat].join()).read 
	Readability::Document.new(doc).content
	
end


  