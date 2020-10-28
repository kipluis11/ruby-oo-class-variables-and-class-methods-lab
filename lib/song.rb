#need a song class
#need to be able to show us ALL artists of existing songs
#need to be able to show All genres of existing songs
#need to ba able to keep track of the number of songs in each genre
#reaveal the number of songs each artist is responsible for 
#the songs should be the single source of truth, The belongs to)
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []
    @@asrtist_count = {}
    @@genre_count = {}

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@genres << genre
        @@count += 1
    end


    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end
    
    def self.genre_count
        @@genres.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
    end
    

    def self.artist_count
        @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
    end

end

    