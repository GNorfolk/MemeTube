class Meme

	attr_accessor :id, :title, :description, :url, :genre

	def self.open_connection
		PGconn.connect(dbname: 'memes')
	end

	# Index
	def self.all 
		conn = open_connection
		sql = 'SELECT * FROM memes'
		results = conn.exec(sql)
		memes = results.map do |record|
			self.hydrate(record)
		end
		memes
	end

	def self.hydrate data
		meme = Meme.new
		meme.id = data['id']
		meme.title = data['title']
		meme.description = data['description']
		meme.url = data['url']
		meme.genre = data['genre']
		meme
	end

	# Show

	# Create
	# Update

	# Destroy

end