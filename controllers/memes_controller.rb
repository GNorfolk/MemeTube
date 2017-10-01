class MemesController < Sinatra::Base

	configure :development do 
		register Sinatra::Reloader
	end

	set :root, File.join(File.dirname(__FILE__), "..")
	set :views, Proc.new { File.join(root, 'views')}

	# Index
	get '/memes' do
		erb :"memes/index"
	end

	# New
	get '/memes/new' do
		erb :"memes/new"
	end

	# Create
	post '/memes' do
	end

	# Show
	get '/memes/:id' do
		erb :"memes/show"
	end

	# Edit
	get '/memes/:id/edit' do
		erb :"memes/edit"
	end

	# Update
	put '/memes/:id' do 
	end

	# Destroy
	delete '/memes/:id' do
	end

end