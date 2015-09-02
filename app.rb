require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './models/pig_latin'

get '/:phrase'  do
  "#{PigLatin.translate params[:phrase]}"
end