//
//  MovieRowView.swift
//  MovieList
//
//  Created by Naga Rajitha Bhogadi on 6/19/26.
//

import SwiftUI

struct MovieRowView: View {
    
    let movie: Movie
    
    var body: some View {
        
        HStack(spacing: 15) {
            
            Image(movie.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 60, height: 80)
                .clipped()
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(movie.title)
//                    .background(Color.white)
                    .font(.headline)
                
                Text("\(movie.year) • \(movie.genre)")
                    .font(.subheadline)
                    .foregroundColor(.black.opacity(0.7))
                
                Text("⭐️ \(movie.rating)")
                    .font(.subheadline)
            }
        }
        .padding(.vertical, 8)
    }
}
