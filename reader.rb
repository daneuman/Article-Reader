require 'rubygems'
require 'readability'
require 'open-uri'
require 'sinatra'
require 'haml'

get '/' do
	haml :index
end

get '/read/*' do
	@doc = open(params[:splat].join()).read 
	@cnt = Readability::Document.new(@doc).content
	haml :read
end


  