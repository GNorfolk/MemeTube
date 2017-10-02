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
		@new = "Create a meme!"
		erb :"memes/new"
	end

	# Create
	post '/memes' do
		new_meme = Meme.new
		new_meme.title = params[:title]
		new_meme.description = params[:description]
		new_meme.url = params[:url]
		new_meme.genre = params[:genre]
		new_meme.save
		redirect '/memes'
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
		@edit = "Edit your meme!"
		id = params[:id].to_i
		@meme = Meme.find(id)
		erb :"memes/edit"
	end

	# Update
	post '/memes/:id' do 
		id = params[:id].to_i
		up_meme = Meme.find(id)
		up_meme.title = params[:title]
		up_meme.description = params[:description]
		up_meme.url = params[:url]
		up_meme.genre = params[:genre]
		up_meme.save
		redirect "/memes/#{id}"
	end

	# Destroy
	delete '/memes/:id' do
		id = params[:id]
		Meme.destroy(id)
		redirect "/memes"
	end

end