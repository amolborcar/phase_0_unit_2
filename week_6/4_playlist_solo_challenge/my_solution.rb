# U2.W6: Create a Playlist from Driver Code


# I worked on this challenge [by myself, with: ].


# Pseudocode

# Create a Song class that accepts two arguments, name and artist
	# Create a method play to play a song

# Create a Playlist class that requires any number of arguments as songs
	# Create a method called add that adds a Song object
	# Create a method called num_of_tracks that counts the songs in the playlist
	# Create a method called remove that deletes a Song object
	# Create a method called play_all that puts all songs in the playlist
	# create a method called display that lists all songs in the playlist



# Initial Solution

class Song
	
	def initialize(name, artist)
		@name = name
		@artist = artist
	end

	attr_reader :name

	def play
		puts "Now playing: " + @name
	end

end

class Playlist
	
	def initialize(*songs)
		@playlist_songs = []
		songs.each do |x|
			@playlist_songs << x
		end
	end

	def add(*new_songs)
		@new_songs = []
		new_songs.each do |x|
			@playlist_songs << x
		end
		
	end

	def remove(*removed_songs)
		@removed_songs = []
		removed_songs.each do |x|
			@removed_songs << x
		end
		@removed_songs.each do |x|
			@playlist_songs.delete_at(@playlist_songs.index(x))
		end
		
	end
	
	def num_of_tracks
		return @playlist_songs.length
	end

	def play_all
		puts "Playing the entire playlist:"
		@playlist_songs.each { |x| puts "Playing: " + x.name }
	end

	def display
		puts "The following songs are in the playlist:"
		@playlist_songs.each { |x| puts x.name }
	end

end

# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace") 
going_under = Song.new("Going Under", "Evanescence")
 
my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)
 
lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")
 
my_playlist.add(lying_from_you, angels)
my_playlist.display

p my_playlist.num_of_tracks == 5
going_under.play
my_playlist.remove(angels)
p my_playlist.include?(lying_from_you) == true # -- this line is still giving problems...
my_playlist.play_all
my_playlist.display


# # Reflection 