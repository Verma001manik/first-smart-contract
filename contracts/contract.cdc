pub contract MovieDatabase {

    pub var movies: {UInt64: Movie}
    
    pub struct Movie {
        pub let title: String
        pub let genre: String
        pub let director: String
        pub let releaseYear: UInt64

        // You have to pass in 4 arguments when creating this Struct.
        init(_title: String, _genre: String, _director: String, _releaseYear: UInt64) {
            self.title = _title
            self.genre = _genre
            self.director = _director
            self.releaseYear = _releaseYear
        }
    }

    pub fun addMovie(title: String, genre: String, director: String, releaseYear: UInt64) {
        let newMovie = Movie(_title: title, _genre: genre, _director: director, _releaseYear: releaseYear)
        self.movies[releaseYear] = newMovie
    }

    init() {
        self.movies = {}
    }

}

