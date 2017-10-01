class Meme

	attr_accessor :id, :title, :description, :url, :genre

	def self.open_connection
		PGconn.connect(dbname: 'memes')
	end

	# Index
	def self.all 
		conn = self.open_connection
		sql = "SELECT * FROM memes"
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
	def self.find id
		conn = self.open_connection
		sql = "SELECT * FROM memes WHERE id = '#{id}'"
		meme = conn.exec(sql)
		hydrated_meme = self.hydrate meme[0]
		hydrated_meme
	end

	# Create && Update
	def save 
		conn = Meme.open_connection
		if (!self.id)
			sql = "INSERT INTO memes (title, description, url, genre) VALUES ('#{self.title}', '#{self.description}', '#{self.url}', '#{self.genre}');"
		elsif 
			sql = "UPDATE memes SET title = '#{self.title}', description = '#{self.description}', url = '#{self.url}', genre = '#{self.genre}' WHERE id = '#{self.id}';"
		end
		conn.exec(sql)
	end

	# Destroy
	def self.destroy id
		conn = self.open_connection
		sql = "DELETE FROM memes WHERE id = #{id}"
		conn.exec(sql)
	end

end
