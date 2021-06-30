class Song
    attr_accessor :name, :artist, :genre

    def initialize(name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre
        @@count+=1
        @@genres<<@genre
        @@artists<<@artist
    end

    @@count=0
    
    def self.count
        @@count
    end

    @@genres=[]

    def self.genres
        @@genres.uniq
    end

    @@artists=[]
    
    def self.artists
        @@artists.uniq
    end

    @@genre_count={}

    def self.genre_count
        @@genres.each do |genre|
            @@genre_count[genre]
        end
    end
    





end