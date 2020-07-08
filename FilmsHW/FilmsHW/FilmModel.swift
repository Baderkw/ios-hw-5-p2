//
//  FilmModel.swift
//  FilmsHW
//
//  Created by Bader Alawadh on 7/8/20.
//  Copyright © 2020 Bader Alawadh. All rights reserved.
//

import Foundation
import UIKit

struct Film {
    var name: String
    var rating: String
    var pgRating: String
    var actors: String
    var categories: String
}

struct FilmsData {
    var films = [
                Film(name: "Intersteller", rating: "8.6", pgRating: "PG-13", actors:  "Matthew McConaughey, Anne Hathaway, Jessica Chastain", categories: " Adventure, Drama, Sci-Fi"),
                Film(name: "Inception", rating: "8.8", pgRating: "PG-13", actors: "Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page", categories: " Action, Adventure, Sci-Fi "),
                Film(name: "DJango", rating: "8.4", pgRating: "R", actors: "Jamie Foxx, Christoph Waltz, Leonardo DiCaprio", categories: "Drama, Western"),
                Film(name: "Hobbit", rating: "7.4", pgRating: "PG-13", actors: "Ian McKellen, Martin Freeman, Richard Armitage", categories: " Adventure, Fantasy "),
                Film(name: "Batman", rating: "8.4", pgRating: "PG-13", actors: "Christian Bale, Tom Hardy, Anne Hathaway" , categories: "Action, Adventure")]
}
