import MovieDatabase from 0x01

pub fun main(releaseYear: UInt32): MovieDatabase.Movie? {
    return MovieDatabase.movies[releaseYear]
}
