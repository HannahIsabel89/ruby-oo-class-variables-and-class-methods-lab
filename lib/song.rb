class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count +=1
        @@artists << artist
        @@genres << genre
    end
#is a class method that returns that number of songs created
    def self.count 
        @@count
    end
#is a class method that returns a unique array of artists of existing songs
    def self.artists
        @@artists.uniq
    end
#is a class method that returns a unique array of genres of existing songs
    def self.genres 
        @@genres.uniq
    end
#is a class method that returns a hash of genres and the number of songs that have those genres
    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] +=1
            else 
                genre_count[genre] = 1
            end
        end
        genre_count
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre]
                genre_count[genre] +=1
            else 
                genre_count[genre] = 1
            end
        end
        genre_count
    end

 #is a class method that returns a hash of artists and the number of songs that have those artists 
    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if artist_count[artist]
                artist_count[artist] +=1
            else 
                artist_count[artist] = 1
            end
        end
        artist_count
    end

end

drake = Song.new("Something", "Drake", "Pop")
mj = Song.new("Black or White", "MJ", "Pop")
ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
#puts drake.name
#p Song.artists

p Song.genre_count
p Song.artist_count
