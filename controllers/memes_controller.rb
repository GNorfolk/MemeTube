class MemesController < Sinatra::Base

	configure :development do 
		register Sinatra::Reloader
	end

	set :root, File.join(File.dirname(__FILE__), "..")
	set :views, Proc.new { File.join(root, 'views')}

	# Index
	get '/memes' do
		@index = "Index"
		@memes = Meme.all
		erb :"memes/index"
	end

	# New
	get '/memes/new' do
		@new = "New"
		erb :"memes/new"
	end

	# Create
	post '/memes' do
	end

	# Show
	get '/memes/:id' do
		@show = "Show"
		id = params[:id].to_i
		@meme = Meme.find(id)
		erb :"memes/show"
	end

	# Edit
	get '/memes/:id/edit' do
		@edit = "Edit"
		erb :"memes/edit"
	end

	# Update
	put '/memes/:id' do 
	end

	# Destroy
	delete '/memes/:id' do
	end

end