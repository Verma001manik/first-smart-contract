import MovieDatabase from 0x01

transaction(title: String, genre: String, director: String, releaseYear: UInt64) {

    prepare(signer: AuthAccount) {}

    execute {
        MovieDatabase.addMovie(title: title, genre: genre, director: director, releaseYear: releaseYear)
        log("Movie added successfully.")
    }
}
