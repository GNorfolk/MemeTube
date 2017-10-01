require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './controllers/memes_controller.rb'
require_relative './models/Meme.rb'

use Rack::MethodOverride

run MemesController
