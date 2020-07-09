//
//  Movie.swift
//  ios-hw-5-p2
//
//  Created by بدرية موسى العجمي on 7/9/20.
//  Copyright © 2020 Moon. All rights reserved.
//

import Foundation


class movies {
    var movieName: String 
    var movieReleaseDate: Int
    var actors: [String]
    var rating: Double
    var rated: String
   
    init(name: String, release: Int, actors: [String], rating: Double, rated: String) {
        self.movieName = name
        self.movieReleaseDate = release
        self.actors = actors
        self.rating = rating
        self.rated = rated
    }
    
    


}
// املأ  المصففة  الموجودة  في ملف  MovieDataModel بكوائن من  أفلامك المفضلة
//أو ازل الـComment عن المصفوقة التالية

var MoviesData = [
    
    movies(name: "Tokyo Ghoul", release: 2014 , actors:["كن كانيكي","توكا كيريشيما"], rating: 7.9, rated: "PG13"),
    movies(name: "Seraph of the end", release: 2015, actors: ["هياكويا يوتشيرو","هياكويا ميكايلا"], rating: 7.5, rated: "PG13"),
    movies(name: "Captain America", release: 2011, actors: ["Chris Evans", "Hayley Atwell"], rating: 6.9, rated: "PG-13"),
    movies(name: "Black Panther", release: 2018, actors: ["Michael B. Jordan", "Lupita Nyong'o"], rating: 7.3, rated: "PG-13"),
    movies(name: "Guardians of the Galaxy", release: 2014, actors: ["Chris Pratt","Vin Diesel"], rating: 8.0, rated: "PG-13"),
   
]

