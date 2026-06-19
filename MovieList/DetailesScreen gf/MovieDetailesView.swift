//
//  MovieDetailesView.swift
//  MovieList
//
//  Created by Naga Rajitha Bhogadi on 6/19/26.
//

import SwiftUI

struct MovieDetailView: View {
    
    let movie: Movie
    
    var body: some View {
        ZStack{
            Color.yellow.ignoresSafeArea()
            VStack(spacing: 5) {
                
                Image(movie.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .cornerRadius(20)
                
                Text(movie.title)
                    .font(.largeTitle)
                    .bold()
                
                Text(movie.genre)
                    .font(.title3)
                    .foregroundColor(.black)
                
                Text("Year: \(movie.year)")
                
                Text("Rating: ⭐️ \(movie.rating)")
                    .font(.headline)
                
                Text(movie.description)
                    .frame(width: 300,height: 200)
                    
                Spacer()
            }
            .padding()
            .navigationTitle(movie.title)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
