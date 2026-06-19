//
//  Movie.swift
//  MovieList
//
//  Created by Naga Rajitha Bhogadi on 6/19/26.
//
import SwiftUI

struct Movie: Identifiable {
    let id = UUID()
    let title: String
    let year: String
    let rating: String
    let genre: String
    let imageName: String
    let description: String
}
