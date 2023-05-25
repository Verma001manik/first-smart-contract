import MovieDatabase from 0x01

pub fun main(releaseYear: UInt64): MovieDatabase.Movie? {
    return MovieDatabase.movies[releaseYear]
}
