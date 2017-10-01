class MemesController < Sinatra::Base

	configure :development do 
		register Sinatra::Reloader
	end

	set :root, File.join(File.dirname(__FILE__), "..")
	set :views, Proc.new { File.join(root, 'views')}

	# Index
	# New
	# Create
	# Show
	# Edit
	# Update
	# Destroy

end