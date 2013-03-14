require 'rubygems'
require 'sinatra'
require 'sass'

#
# Configuration
#

configure :development do
  require "sinatra/reloader"
end


#
# Routes
#

not_found do
  redirect '/404.html'
end

get '/css/:name.css' do
  content_type 'text/css', :charset => 'utf-8'
  scss :"css/#{params[:name]}"
end

get "/" do
  erb :index
end