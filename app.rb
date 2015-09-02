require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './models/pig_latin'

  get '/' do 
    @title = 'home'
    erb :home
  end

  post '/translate' do
    redirect to "/#{params[:word]}"
  end

  get '/:phrase'  do
    "#{PigLatin.translate params[:phrase]}"
  end